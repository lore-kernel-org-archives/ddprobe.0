Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1764218C333
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729354554; cv=none; b=ceV9xxx0vR38yIoaQXK+XhQ7jNm6Z4WqgTpbkE+hCTrFvzCbBEoZbBT6wscFNPHRmCj5/Fd0UGQmH6CHe1vyl8FGkB5HBn0bHVVl00YeWU6GylGBi2n8EDBU3KNXhdnyN/oevCtAuRitwqUpyubTR0aMvrd5ri2F5Fv2LWFZj+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729354554; c=relaxed/simple;
	bh=NQRWCShJSP+3qyKN/0ZiVJem7u6Ylpp2w3OGlKaIWrY=;
	h=To:Subject:From:Message-Id:Date; b=JWkgSQQlKB81K17JPINQ/cFdJE1GKoQWQmBf1o/GGqL19cn1kF1Sai0J4l1rT0NH7+u9H3/EBR2M1C+NG+dw01ObNhr7e97824k1ACznTkohBIpN6e7iaD7Zc1VuEYKeHdF7xhIEQX2SoUbgEQmdpzgTjuxWAcY0pu8c61ktdfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXBOM6Pd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXBOM6Pd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE0EC4CED3
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729354553;
	bh=NQRWCShJSP+3qyKN/0ZiVJem7u6Ylpp2w3OGlKaIWrY=;
	h=To:Subject:From:Date:From;
	b=CXBOM6PdAvrl57N3/D7fa3DeDh1xcUBYvNvl0/YlAcyv40FTsSOxFbI/I8mmnHy7/
	 Gv1p+UH5R+Yc7KGWRZQerutUks6wbKkI5PGMpwnesk7vx5f7DeFRWy+b2ceKlo1vu+
	 cYMpI7y8MX9h22slDjWdiImLAwdSvEdm73kTY4nrUbV/73fW2kGXSyDvoRoWQd+pgM
	 bks8SGn5S2lAe6Z9Yn7M1AewbInSZAWxSGJa30RVS5y/CL4B9KUSDx2RahpHz1fpDM
	 3xewxpSod5jn2U+aXKf2ucM+RcY1503pO71h9g7Q3XRRVAOeHwgrJBJ/YB5UFb/7pN
	 usRucTM0loB6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CF4D3C91D
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172935455358.29794.2771867212282569971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e167f2795cd9df252a6f03bb3dd775318c7be68d89938094547c9db8aa7b4af0
Date: Sat, 19 Oct 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729354553
