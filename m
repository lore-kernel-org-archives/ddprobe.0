Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C1223B605
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762730994; cv=none; b=B2Hj/JFuYwH1xzVmpar+fXvXI9tavCBplsuWzrFPPjrSSJ6PyMFmIsWK9Af6sYocYTEbqrLMKjmtcEbaaCyBVLvA8Svyjzww2o5AgMyFPUJ6hsKNUoqjia9ljNx0fOue9Zrfy8n3h0em/y9bUQjTINw6DlyPTN3KePYcakaPWms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762730994; c=relaxed/simple;
	bh=RUvtY+3TCtpuzF5wqaoaKV8Kij9JjiuQ8v1IEo2mQxs=;
	h=To:Subject:From:Message-Id:Date; b=q9v/GZB55/BZ9XLokF8bY2DcAXCHbK+Cbyc2A/bUlhaG5eTPVcakCXh6UpKDxbUPbj1JcHOmj3u3miw8ALfBjgP+r730AQhKz5e3GFraYNKlWyedm3wuCpceNsP02/RkmCRHz7v/QhUSDHyECyZ5fpu/JtFXbNxC8UQN5kAM6MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVvSLwFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVvSLwFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9132C19425
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762730993;
	bh=RUvtY+3TCtpuzF5wqaoaKV8Kij9JjiuQ8v1IEo2mQxs=;
	h=To:Subject:From:Date:From;
	b=pVvSLwFVkSX5CjJKl4JktwEM1gQJ4iCb+p0nsxcZiAj98rFyvv3HZPejfDhss0LB0
	 1FeIu75RknVTVcrKugoukUugZ+qiWIYWhaa+L3Sv9Ne3znjH3SHpT+zV3AfNszpb5E
	 zz3awnk9UpXAfwh1zWQN/MH00iOtJ8WTIBe1RLyaYCAewtoWTyCKR1YAL0XxFiFRl4
	 LFm5D7NvrFTrjxEw+oWP9NzjzQuj+ejcA+JCmk2TnO6HCsMpHxQzAdh3gsJY09BaXi
	 A9sM+2GjAVFocNiAqbGMK19FHCOw/q1OAG60NDvZOJZTSbXNRNPuCxVEq+ZSU0jCze
	 VXsLEXu6f3JYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B34CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176273099357.18919.3284158718787868526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: decc3e50ad2777bd82183e5c3a9b7717f25f50e9f80120fff6a388f46e41aa28
Date: Sun, 09 Nov 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762730993
