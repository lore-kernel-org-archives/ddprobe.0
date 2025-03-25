Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8FC2571D0
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742906994; cv=none; b=E2FWsbybRGHSxJb+xVh4aut63W0tv7lSzvaN8ORmSSnqG7Cq/VLxJpybaHKN/vFB5AVsyMBuDYoIzK//+ZgLIrdo5cZrbEDY3KffMoHcr9v6P4lAk9jfyq+hquhcxqK9a4Kl7dFitjOYjwuX8tdyjJmZ2a7rKgUcIie/Z9ZiGYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742906994; c=relaxed/simple;
	bh=wKenizBtlXEXaDvXtkW1mTSm0XEHYchwAaa0iDeDORg=;
	h=To:Subject:From:Message-Id:Date; b=MKbBX54z4PPnk2CAJf+HxJ1uRAMlndUNPus+OiPoZe1FU0sYZP52okJ1ZK7dNRDZ8LGl9qqxUxkbJ8Bs2ZDDQnEAlL8F+8jLRQ53wkuLloLoT/pDxS715l7x4lr8Fik2UBOH+zEiPsoOBRiCD/wWmanTQltIvO50AYE4WCSISnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNjLkBJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNjLkBJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB834C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742906993;
	bh=wKenizBtlXEXaDvXtkW1mTSm0XEHYchwAaa0iDeDORg=;
	h=To:Subject:From:Date:From;
	b=sNjLkBJ76+pOb71lHmgddaIVYFOuAI7gOcGL9gNjs/2mtsEfj34mqT0sjwSgBWdZ5
	 qa3LWf2T+fcHVjquT6G+mfUtglRpTPoyAEdWmLY+nfj5Fk0/X2lHeQgnqZC2iExEn/
	 mQOhojOcTBGXO4DWJaUXWXw7eAKq7wSIeW7SoFFZ6PXJ5fLwc4d401tAJzX3Q+vdmR
	 A4dScLaT0M5eXYQNsmCEaV92k/kfbCD1Wld0YCEqiuFlvu5oeCBFoUqhimw49/YL7B
	 ppR7U4fmaHWElRcg3UArzddlK/x+5bryGjfqwAOPg4zYBemvonj8CHGJ/MWhxrcFXx
	 Csbt5YzcB8iqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4FF8C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174290699366.5150.14058483515891463100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea549abc31f2639cd8b4770b461a68f6fcce2f2f2a898cbed4ed7159cb602d5d
Date: Tue, 25 Mar 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742906993
