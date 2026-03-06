Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD2BB1643B
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772840693; cv=none; b=aWmDzoEq5+epWLVDwSVaDd6MAm5+y2v7BiJidbnXBz+N3TV15+GMFU3RSGkxoU5uaAEom2VQ87H+NSxuV88wuxotqL+Lmgct288qNoou/I0ZUCtflgt2uu7CCDz4LTN9bmU7YB6lRGXnKr75oD+7g9vFp484Zrqw12SVsPkhEW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772840693; c=relaxed/simple;
	bh=f8d+z2a3ypmIbm6xrtthidk+5mU9HN5OWtwMGlkuivs=;
	h=To:Subject:From:Message-Id:Date; b=WVst9p9koxk9v0iGbBkQ8eH8kqQMehqVmoQJi/M4CmtdzSfH+/5ivH8eAUfj8zHXvuJ2CywiEVDsET4j9cPXTvGBiSL7BCez40oo1dFbR2aKYPT00unJ5NhITvFlJHQEZjw7m/7u+1hAaIRKZga2XMD+TRY26FIOgPrE4kf3bvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNnFZSAE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNnFZSAE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6674C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772840693;
	bh=f8d+z2a3ypmIbm6xrtthidk+5mU9HN5OWtwMGlkuivs=;
	h=To:Subject:From:Date:From;
	b=MNnFZSAEOOYZno6t62NxF9pZfOU2iFJpMdqFugPmgH5u+MoOMiPS1hZyPIyjd1sNs
	 /tCllIan3f6f/hCw9eI7ju5f/LVHuptAOFlle6jjjsN3HgUaRPO0FD2wP6sK9Xay2m
	 CxMzvWmRUwZ3Nspo7piK/Han7ye2hE1JRvVjS0kMFyPHq8dPDui/M1wmVZ2/9MR5jg
	 9RIYFMdxAQagK195pGDA/nWOi3MLAX96D+x24J4VgMtjK6+8iQ02Oewz8huSlMGYoH
	 8NbrCVI9Bdt4iNXoNGxz/1w6sscZ4SzD1LiQOD+T2JPrX3Du+8SxO3ZuEM1AUJvPRG
	 U9ilP68qiS4Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF3DFC9EC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177284069364.12988.12832710961346994050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f1933a265cf5cb0fa3c58ae77557f35225f3db90d33164f0cbeeef787c384a
Date: Fri, 06 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772840693
