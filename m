Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2815F4C637
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 16:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719244943; cv=none; b=Y0yBBLrd7TJ6KKqLfa0GQKrfjQ/SA/WkfgX4O7tlGp09JdzfpNNypbes1HTs27r/Nni9x/AHa1Cw64S2YeUwU/Ti9CwCJ1PWOw1SXe4ZizLa8l/v3LuHukLHHcEMfNljd4EQMBouPdZY798YDwU7zBFITnU8DIfACtpUn/vTopU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719244943; c=relaxed/simple;
	bh=LJPoKo42vFGgH7kQ6kzsGd4G09kW4tBq74UOya/iQCM=;
	h=To:Subject:From:Message-Id:Date; b=IlYeis8H7P/alMmlzC9EwofGt03VbnGJPO1KjCPyaEAyiBsaFBPHPJxe3+0oAXLaVJmVPzrdDrIrjMqKmEV+jVQOb5JEHpQoOT+01R4DhH/tLGGSGRfmkYdJURhS/bJDNiGyb/wICKn8Q8cBgS3eJFcqpyBcnTNmKSkyjNJxg2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/KgkGF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/KgkGF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07E50C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 16:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719244943;
	bh=LJPoKo42vFGgH7kQ6kzsGd4G09kW4tBq74UOya/iQCM=;
	h=To:Subject:From:Date:From;
	b=t/KgkGF8hCpkAD2hNH+QuA7ISah9iy+afnAh2v5V8Ghr0yB+l4grZZBCvG/TGvyIV
	 INdxvmLcBNr+j53uTnkLentmbqZHnaXfR1VuDhWMCP2of2qNv4yKKMcZsh0q48SQzq
	 Ga4S3Et73xrVLUuRAvfY/6QCbn553bSyGnZ0ft6GOW2gz1uGzTYRmwPEeNMwjxAcCk
	 F/R7WXeBurbdubvAplyYBuV39SFfZxenaRoYs553f1ccgY9Deu4qE0Y2Wuzgr/Pftm
	 1lY7A6ZzqAysN5epgkEgzNv6tmGL7ClOfiNFa8O8XwX88o5Tg8djui8SUdcVj4Ikre
	 QTTTm/wfmKltA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC824C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 16:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171924494287.27642.4600211412850792251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 416acafd4afab715973558708fb1ef0f74454d6eb718c3363ccfb38dfb90ad49
Date: Mon, 24 Jun 2024 16:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719244942
