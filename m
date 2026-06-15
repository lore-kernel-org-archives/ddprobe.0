Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469CB35C183
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 14:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781532394; cv=none; b=U2eD9lFZTxAJcwaBOvFKGRJBnAc/I+qscQoqAryzz9Bkd/3EqHijVLjbYeOipAGcTYtedantjNA964K/tda6T+rgtCPMSVl9R4+ciXyov1n+R2ACBKvSVhN5AjqU2WSGblVY8POwmWV/sQ8K05WF28N9Aw1HpvCYnF1RRXXZ/No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781532394; c=relaxed/simple;
	bh=v3u6oZYgVIvQmn4nJemZ2ZU+XIzlda8r8JVOdmn3WJ0=;
	h=To:Subject:From:Message-Id:Date; b=MwBKeq/Uikbw8/TqK9+vQcXpgshkOv/vkB3XxBuyKDwk2VCapaAHa1+QdiSqdWqCoCwyUuPMx9v582Pv21chZrVGFumEdUCxkyrs3KyeWboUTTNdeMhReDcKli0J7sItuFAmE+h8bGZmg2vm1qJhjl4L9VPg31rrjtaeOoSNbKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxfAkH7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxfAkH7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F85C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 14:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781532393;
	bh=v3u6oZYgVIvQmn4nJemZ2ZU+XIzlda8r8JVOdmn3WJ0=;
	h=To:Subject:From:Date:From;
	b=lxfAkH7V7E3MoX8SBUxtdYFX8l/KiL+NCwF3ym/Q247bIbT7tR0fjP5Vc2i5hPahd
	 MEP4lprAUFGbdwI2+QC2QU/mgLwWlzTjYb3Zwjk3KqpjFUYY2BshCXAlc5vjsxVFF2
	 2sH9o/Xbg1CJjw/HjZNJZCAACSfRcxh51NvM3rAhD1GxpikQ2NFebKxoI1LlRmhzZA
	 ruplEV6+avpuXOLkSrsSYVWTgR4oocVK27tSh/lwsgI6ZXQCcuq1X8Rd83guD3U3+B
	 A6YtD4979EYUnn+JW26QS9BzXCt69depy3zpVT5MfVQglfTY0FZm3FT2qN4CC1+OdJ
	 CK1Qs+KIe3Ohg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDD5CD98CF
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 14:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178153239370.8541.158680182174070551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 418a2f2068ce07d4f276142757a343339ee7e068bb85bcfba3608449574272d8
Date: Mon, 15 Jun 2026 14:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781532393
