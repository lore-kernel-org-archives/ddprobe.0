Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DF91D540
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737974754; cv=none; b=Cn5RqsCwbxsedmpDYiCbn7HdKHuHjzUQTzBgKXmeCskS4mbMypTlF3KjGrEiC3ng8zIPcYsGW2Ikn9opzx5RmGnfANpl0q+YEVDtA87oeEJwl4I3i4+IiekZGNm25RHZWmPrhWdJDkJV/U3+DuBwiy7tPG+Nfo6mlPvjWUUgzRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737974754; c=relaxed/simple;
	bh=R88Xw2gWekLAsPJ/zicmBQvBErgJNYTdH/YKLWc8Uj4=;
	h=To:Subject:From:Message-Id:Date; b=sDGwYF4u3I1BAzOim0aQ9OMkgrgMEzsBKDohKX5TQAJXm0EsUIIE1Om/GnSXAulA+WRRuKwtLGPGU1O353xgbrKXaZqzjmuYNtosx/A+qk4Zjcm9FENeZbrrCnB+wGwv72jzh9Gnx7Ci5sGKyhQTIY8CCICNc0KbZIseaO8Mj/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBbQw23B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBbQw23B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73B7C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737974753;
	bh=R88Xw2gWekLAsPJ/zicmBQvBErgJNYTdH/YKLWc8Uj4=;
	h=To:Subject:From:Date:From;
	b=OBbQw23B6dEcBcgE8rl+8zqR1QHa2/mLwJpWKcbIXhWvcVxcJXhM9tSpyBOecxu2b
	 yoPKAx8X3jMODQAz/9RjPaar0NUwFISMrOgf28YRtiEDyJOTmh+F4MfoDgnrnBOOPf
	 rt9vo/1VbwdaiLBrBwBo+vtsj3FEaOXWIRNzTMxWoPtMiiuqsWrt3wdUdHUEI4jovN
	 E+KBClSI1bvdT1Pow0EuwOKcVgdTAWjZhWXQeF4vCxkTupplkgwaH3/thfbRNqHzNa
	 5jGbcYD4cMUsTlKa8t0A39VthBTcc+Rfqau4G+r4u4Fst15sTP/voRz/JSrHL5PbKi
	 nW158HcuWV5ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9156DC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173797475358.13429.7220320879971754821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1097daf7b36cb3933ca2130da53584641e1a30002ba819a4618a091053057fef
Date: Mon, 27 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737974753
