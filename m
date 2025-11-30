Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D9D35949
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 14:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764512574; cv=none; b=J4j9c3T+YzVfXBG+YbN0Cs1VLZzhLEEmkfuseqy3xw4FpXEKavqL0vI/A8OMuO7uQfbu0uv77U5v6b/GOqM1xeSoFnotdUa9I/XSwHYB51Si5duYvC+2IWvPYU4gY60Ye73kCueGLUUFBB97Oi0udaBJ4mxwBp4VJ/SayVF1S6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764512574; c=relaxed/simple;
	bh=xTn+mjWwZeN+8nFGwl0qJ5+/kSQYiJkkS8EqCNnTblE=;
	h=To:Subject:From:Message-Id:Date; b=OuNRJ+7FcOVD6z6Qq9HpR5rZ4dGi1BC1F8zCseEJ/3hWgzs230o9Ore2BCa0gtgCWS2sdroD+r3k1YB8zDEiVVVf+thFyS32lv34S1Kjeolr3tRnDDaiiGQG6Y+IU0ZqrpaduZmrT7hB9bjWMVt3RHEDjEOtvbLWOMOZ+V4PxuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpGbls++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpGbls++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFD2C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764512573;
	bh=xTn+mjWwZeN+8nFGwl0qJ5+/kSQYiJkkS8EqCNnTblE=;
	h=To:Subject:From:Date:From;
	b=WpGbls++eQHFdBrprZFI6fbWp/qRillWQVEcP3yLcjGpNiSOAvpf2PIpE9lGQrJv5
	 xlxV3D2HC0Jsb9IEptlVFryIwomYHUbienMfgjJSfhsLCdgMbX0GIY996n4tFC03vD
	 wB6v8CdTBDo9bQYj9dWeCIiX89rnZ1maGKJcMmvgeaK/cSAoJqx8q7NZZYCM8kp+rN
	 PZYOFdhpe4NX7PYKqyaTN9Ww7Sqn1AuMYTUXv4bhld4Y4v5v1ixSpa4WQGaC2XU/Pb
	 rIJETd7LKXMqQ9cPexytzYtzbaM4esueVdmCeVv3W8IGCpUJIHE2d95tm3fYMbJs1U
	 d8Pe4TkJv5bCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9824DCFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 14:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176451257358.24991.5595879175169759117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57a9e4fee51b5377fa2a2854d85811f0c6eb13dbad6e28787b230cd22d198720
Date: Sun, 30 Nov 2025 14:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764512573
