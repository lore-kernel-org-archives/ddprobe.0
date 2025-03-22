Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430F92E339B
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742608194; cv=none; b=S6e4W8pvQbCeO6OgA0SvNdecvjhXLVmbG+gQsT9OgPu1gPDiIf2yFAkvo54OWdQUC0k7o4cp7npia9ayXTWNi3oiyZrh8Fe/RdvqoJ/qxiZI7OUiGXRtJDoNo19CMzaP2SZGNU3uj8+V/2Ziw0c9E8OO7QsGE6/yvJnRrxwBqQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742608194; c=relaxed/simple;
	bh=O2pBMsKwUVwdibB+Mu+qOnSr1CTtmj3m56jUgZno+n0=;
	h=To:Subject:From:Message-Id:Date; b=j8xYW3ItgYExIli9736v9f45/D7eBB+zfLAOB7D/TMI3uBdfWwwbQKaecGEH8rI/Fd4dnZf82HQjRE/TBxqEVCvFur0+BgLXObe+T9a8AEFa5TkpLsGnbbvYB2kk+GgNtUbgIvKgxm3NGAyQn8Mo73mWKJl25+9KTMftm+KaLps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sTm9+m2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sTm9+m2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACDDC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742608193;
	bh=O2pBMsKwUVwdibB+Mu+qOnSr1CTtmj3m56jUgZno+n0=;
	h=To:Subject:From:Date:From;
	b=sTm9+m2tfzcAdt/63YH94UP0kgndb3L/PhD+eqzgh8Kf7FibfxdjymdkbKiiB2XlN
	 s8zb1GoSVNuIikoQz7izXyJKdc1mh3QGli5mQmWjF3xKs7c76C/eaHDwYMScitkz1o
	 4yggBO1AOmG0L5vkpFhRb69jCRZQ1RYus0zr3wJRr8bNRQSaJ5C4C+sTt7p8p3h+hf
	 vLP95wFRxXy5/QfNDvXqcF43YBd3c2iwMycpGPT7Rgj/viRLm28eVj4gM2pqtaKJEe
	 5AmvVRccWZxq5uPBNj8B6u9+GAE/P4vtIE9uRu+so7Pgr926Px4u+z2JM0hGcz/5nr
	 Ajiq5PGzZJabA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A13B4C36001
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174260819364.8492.13314292345544224273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35ee1337a9acc268c965925316df1a651de8ecc5ea349abdc097fc32f4e8f229
Date: Sat, 22 Mar 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742608193
