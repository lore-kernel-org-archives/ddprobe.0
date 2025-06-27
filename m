Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D576126C17
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750991994; cv=none; b=BqKz+dcfyIH1FmYHjtpyP8OZUfTup6/4o8ZhbDPIt1OjuuGnyN/pjHXqkY6pCqL5caQFJuH+Qf8X8XWcZ/ljcEm+7Z06bj9GlQcu6fUd1/EvLxvhx5sb0AkHpgQ1bDPhXwMvxrBfqglpH4DsNqigRSYQyFbMfPTea54PKwtaHGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750991994; c=relaxed/simple;
	bh=LMIYELXuAyn9tplF3j1jkwm/zatUtYBwThOX3CnqfxI=;
	h=To:Subject:From:Message-Id:Date; b=FtQMvDoydmE8ibebO4vwaJS0Fbj5Jg1TodVQDAYyd/0RkAmmt0gnhDZ9R3FjAn0+YxZihzGahkv4heKNFzL5ow1T5YfPprbRPtuyO8tkabPbHfBuFpTDEv5ZHZugIQeYoznn3AVkgpI4QDWSGLbPx47RYZfpVnv7Zczv1KYRXNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrGBv5g4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrGBv5g4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96B8C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750991993;
	bh=LMIYELXuAyn9tplF3j1jkwm/zatUtYBwThOX3CnqfxI=;
	h=To:Subject:From:Date:From;
	b=hrGBv5g4FtwFkbPPbpKPNIyYcXWfhKI44xxZGrhGSD+VjhpfxDACOhkvUH0ttOhBo
	 NxBhuAdQ8ggHH1rODK/UFX6OOgB9FjVeJej/vT7dOxEYOgsoYop43A71h8mE92mMDB
	 qRH/gFYosXB1C/nUSR5/IXE3j3V/gZRdBrBNoc/rBTqu1agHwsOm5/CzzJFrpLH3Ey
	 mg4pLsNXS18FGboHPxaj5/iQpXSr93k1uBcyedkqXuU+olP7FHaYcieGSEKFkjVCRC
	 WYvaFZiuU1JzAmOMpHp4meMYTJ+MXivMWp25+oaH3GwK5qq+NOJyGQeFxPMKCMv8oD
	 PXF7oojrKCY6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AB3C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175099199360.3812.10645898643879176310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66c70eb81f699b1395ad413f80334bae809b0a705e316ce0329025eed320d1be
Date: Fri, 27 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750991993
