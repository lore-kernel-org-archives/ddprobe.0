Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E611F4C90
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746120594; cv=none; b=Y7AofG0hxmfEi/albWpJNKBl9M9USgzYs3zx3LnrDzKAtdFRtICSzUCvujWDrJIwCtbkxWA1PrW2irxuFwzpnMO2m39asByDsY65BU99wWStiLUBYYzFFr8LAEOTBaQ/6dZvSofsB/qS7Apxsyf3Yxr3YlL7XYVJOlLy8BN+LUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746120594; c=relaxed/simple;
	bh=PSJmDUttmhAB8o0ulAzQc9pBLHepgPSJhwGnA9lrcM4=;
	h=To:Subject:From:Message-Id:Date; b=rFdyG+hwp4uoClTUNof9BqgZLkQFst5sRYAbe8a1f5mI3pzeNEg7AxuoCI/8zlg24WXn0htR13FwPLt0vxHGiXkQL69mKMicIVegnpTnrK+z/QF45eX8U4BGUTS18Cb/oapj2VSwmBe1Y+vv49W3B1/qTjfksNLJ1T9mJyDqOQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmiNOoSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmiNOoSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61EEC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746120593;
	bh=PSJmDUttmhAB8o0ulAzQc9pBLHepgPSJhwGnA9lrcM4=;
	h=To:Subject:From:Date:From;
	b=qmiNOoSiRNGAlUmcn2Zq4lQ4Aa8FHLgHzq4jkxlVWL9x3tS0+YERn2hlVV1lXxH8K
	 Be7XRvxCwuPwdP66lDwe+Y3Imjg5Brfba43KWh+3t0v3L0mnB9XPw4/A19omT77v2R
	 D9brrgJtlBLC7InSZZjIXP9mi4teb+sWHttWLOvuv5mlOzMvabBs10gz7VZRNvOnwy
	 IOzxsRbPk37v9Zv7Wt7VKWD1zqRcy4PHxhEd40veWioUJ4p6vaQqd8vFpr1d5A8SEc
	 Sg/NyPJpAQMmQwI8pG2hJMuNeSsSDxEjE+Yx89WKXkWvGQw+h+b9hGY0yWaEYCmjN5
	 V+eku0ooJqAZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ECDC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174612059357.20578.1866904401113949115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 730a23f6ccc1c691d23bea60b70667d819d95c40799ce651b3824eef18887907
Date: Thu, 01 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746120593
