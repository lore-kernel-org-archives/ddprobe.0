Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125DA199FB2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750492794; cv=none; b=HB9usW/ykkw0NddGr8Jhrurs600Z2mIxkV2OU7Z6NnlnH2D0E0DI9boBOlLjlvkCpx/UH4udO0rd7Wr4VNiOw/heKGnjfg1Oe0LssGzVcLmHxi3VP5zeNhB0YTfW55Tn3RAyjzi5ciPbcdMO7nYJNZfpjNNhbTFwLr3Yz3vPEMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750492794; c=relaxed/simple;
	bh=ljhjdrqDY1sdX2gLXHXkr8C3LwBHe9k+/ZZ1qatXH2I=;
	h=To:Subject:From:Message-Id:Date; b=GwOA8UspKYij0I8/PykCoOTA7vHCdLI2Bij0GJXLdAG/7xU4YoErWyMd2vZfNEUmGoF7ozrs6cDiejXoF3olPlz1MvWlvB//mIGNTkPFgRNrctiyVLm0qE/obHWSctNb/t0/SmrYkRQiq5EKezySAiBduOe5K/Uw9xY1irYHplM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmixhcQ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmixhcQ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DCBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750492793;
	bh=ljhjdrqDY1sdX2gLXHXkr8C3LwBHe9k+/ZZ1qatXH2I=;
	h=To:Subject:From:Date:From;
	b=bmixhcQ5rpVMBbMDb3JAFHq2tj44LkZ6sZ3y4kBw/YPDKynjeQjIJwquqO1a8CbTz
	 SF2RxFJJRbJbmeYE2XyM4aUGJ7HCBaUPIQZzl5yheA6YwOpCTbKq5cxsSG1Kj8CEH3
	 3lznuEi7jwk6ZM/Wk/7UvrRNEb8DHD8DOU9UYY74W3p3Q6+LOSyNSPMyBjpanVGNRY
	 mjQl5LX6sk0dL65BPwocuUh3a1eAuFTq/eLpW2KlqkFhv2tR7NDwq3luYO+DOAdhAe
	 hH10Zt3rh/WbBlrf+EoPRcDurWXuC4++uz6CbjYBcvqfO6btzb5Ulq1xM0F8emL+vK
	 befSR14P+Eqqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4EDC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175049279357.28147.4039536512826643352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d13474686f35769512c10167696b81e42014a2dc0480bf8097ffea0fa52b0eb
Date: Sat, 21 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750492793
