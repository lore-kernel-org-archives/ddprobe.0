Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67C422CF02
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736769353; cv=none; b=DdfNryqXtyjcb4qPnNk6dSW/jEPXO/ytY8d4SpgcZGdSCIkO4lEq0gYl1k2mdPRpjPM2Re+Ad73FMTe/XPNDJxSWrqS5XkQsG/RIqluLDEWBYEYBcrxwGkf99aGlDVAprWJxSIboxkzHODOJMBwog+8KX2X0gkd+LcbSOwxLKw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736769353; c=relaxed/simple;
	bh=oqVIpHKhZsmpkRLPqmgIlmz6/drfFvRNAGFF/qglECQ=;
	h=To:Subject:From:Message-Id:Date; b=uK2A/F78RjYErj2lFp7LSKH1sOBbyDyndP50uwbaCziluClQ327GTVcMe0/b/E43fr1GKezCVSUvSIIfSXPeqrHdwzOSpVXkrGsykT93Ibg2yceXpyLoI5NwQ+AgVr+kyGOrvDXyUQHLmKNXFazfBAavaRw1X1i5OM5oaURZ/sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xgxj1Uj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xgxj1Uj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F304C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736769353;
	bh=oqVIpHKhZsmpkRLPqmgIlmz6/drfFvRNAGFF/qglECQ=;
	h=To:Subject:From:Date:From;
	b=Xgxj1Uj5bX/RXyCG+qtHF1fzTG6Fit7TbAmGMuOiRNP6T4HKKS+HgkrpfWAlKrLPs
	 stGC5o9O+H/tpXKMmQk8fP0GUo9arnWvLDw/3BvjqG31ACG74M9fvxjfGvpIr70gE1
	 CGUlqHqdibY9Gt1roZMaNDC+KxC+cM4qTXxh0epmNdOKk63oW0FJHmqI4qFm4Ojctc
	 r7+xX93X06p09H7raJyScfWVQtrqugJEKq9fmaw8I8wXL0PFbHkiIjN30J0VzsUh5m
	 /qwMM47IngqWtNm5VybE94sf6yDqtU2i7OeCts7wdcc5WXdGQQ4IG1+Gn4jvUfGFcY
	 bOcWze+v0RPqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901B8E7719F
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173676935358.2590.3783311586662531338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d198f3833d8d574b42580f505002cadb03e2e60c9f15de3b28405932fe2533bf
Date: Mon, 13 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736769353
