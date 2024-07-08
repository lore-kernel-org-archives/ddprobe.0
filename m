Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92D80EDB
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 01:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720403783; cv=none; b=n6qfGxH1ubi9L/lKJkwCCVXn4796jQVMga5buWzOlYXQh1I+RGAJfIyMNbw5MD143ajFUw3IzderLVhkSzARMiGVeB3Kg4DOIsa+WM/cWb7aenkjkxHmGG28QmVaLT+n2aOwGI/b/SwXitTDJVXiFihYpAOSmlYj5fJyHsrdKv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720403783; c=relaxed/simple;
	bh=qDJu3phRinaU4fSqfSsxYSPUf+Orc5P6gnzxhJEq2mE=;
	h=To:Subject:From:Message-Id:Date; b=CwnCVu0jn0CruLgigZanvh92yJTpiaacXDkpIHfbkrm8mcDc0CfyCWkGi87G0ym9PplFxDUxI/ZV4BAaf2SuaXNEJUIzjR8P2Ov69bLCIy4lZAJnOpVEbAZKWBx6mkNQtdmPWt9hOWLK63aEFfRM3nINN3hd8++CBqQzrtTtJlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfDeeyrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfDeeyrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B395C3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 01:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720403783;
	bh=qDJu3phRinaU4fSqfSsxYSPUf+Orc5P6gnzxhJEq2mE=;
	h=To:Subject:From:Date:From;
	b=YfDeeyrQYtIMKL00ZoBDeoQ3ZsWwZhCOL5c6s2aFLb3lVQprZzF7MaqaW0gOQYMUc
	 NoPjfT9kn26nr5cDH8eeNwg5LFhRACX9aaNZjhCNK2xIXoQRRKcV00IUcDj5LGFwFa
	 Y0u6xcX+R1q6FY6KcvG/S9Bl3DzGUD5YA39/vPS+0mHlsDMYxA7WS8dO9jj85mf1pI
	 vNol8XcCZAeX3uV6C5YhYRg/w/iDQ2cnMxN9KNWMl+Ss4qd/4d23yxs/TytVrkDYcV
	 lx2e18aXavSCM8/Ho5C/YIDDYReNDotDpAuAf1LmZhcFj1vN8bInvwMPOltJK36ZPY
	 snPn412XAi54Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E767DC38150
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 01:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172040378289.23329.1188758556481730075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee889dce727824173b934769222fcf115964fac0f79ab18a7ef0be176b75abe
Date: Mon, 08 Jul 2024 01:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720403782
