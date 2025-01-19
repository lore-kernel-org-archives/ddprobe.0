Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488801974FE
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737318354; cv=none; b=HksMLNGFqg2ayzpNd3CIps+lk1FQv1TSNWH4616+atCV0o0O7ZfRp+4o2n+HHSKoHd7BPKAuShN88Jkfz7jsB+Yz7EWHtZOfSNP57gJGgQ9pCxB/g/p90YmHaTYvo4ZXtSdz/Qh8FdeAW+9yq5YlVSyHxgwglvqPcAWA5fnC/f8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737318354; c=relaxed/simple;
	bh=RV+/d8dUHq6qqm1AgWpUQjaOIK2Exivrt6ndH6Jh46w=;
	h=To:Subject:From:Message-Id:Date; b=b861tpqsbWOToXoxeDEboXtJkNGwmzi9+0Yem30uCGRE6ycuTlWZK/Fwi4RhCe6Bj4jviuJLHuy8DE02h3QsAOBpVPX1n11mAKiKz0dlT97bh5Z9+O7R/OhjN5iIeiWujl7tjNlN1BnOvhsL4ovK9PHVV60Ni0RtD8+lU3Lyp/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHdaXJxp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHdaXJxp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49E5C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737318353;
	bh=RV+/d8dUHq6qqm1AgWpUQjaOIK2Exivrt6ndH6Jh46w=;
	h=To:Subject:From:Date:From;
	b=pHdaXJxp94ULCokEdonyi/ACnEGpPX2gqKC23n65uX71u0JCGbqcxVmeuTiHQCtFo
	 JBVKUk7KHi/8OTa+gANcagZ0u/xRM3gMzB3YAVgadIGze+wpfem4InAanDNYvlQFX2
	 VyoocJgj6/O+yin74EIbyc48ScoLThhb6YXWe5+qh9kW3t1KtQCnOGVDd0Z0jp7CyY
	 0Ilaen3e/LEzOfJErVHhixpUdaU+3Ecd9x2++xzcY88HBqtiiWImt2/1fmNhJx0wrQ
	 a6i3oOU8GWWEgDyOIHmaIDA2dYiPQzk4NV6YA+iA9pCSyDvpvAbfQKToaemjGxean0
	 0Zj+HBLADTcXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900FEC02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173731835358.12591.16368598441524647306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf15c74204cf575f0d39d064b37a2694132d19e74eb58c21513f382aba065d02
Date: Sun, 19 Jan 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737318353
