Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529CB15279B
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 07:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715325743; cv=none; b=Y5+JYIkvki4eC4tHcU0vmaQDS5clAJQbPQQjE9H+Hr4NJApJAGnuz92Tu0CVExlzm84lqT2Xp8P+0hjR2jWEijrolmv9737Q10Z60AR6Wgo+zK7RAFkhVaZiGY0ydp/V++trviWtEkKqaVz2RPOJ6C/hybHVzQmjaWMiJe3Ziqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715325743; c=relaxed/simple;
	bh=H9Zc+YtHSyyRQye6N3pPIbvdLcKn1Aq1mFlx5+CiflI=;
	h=To:Subject:From:Message-Id:Date; b=kEl0e12JEcgq8DIfZ+60W+CGPFYl+p4TXvwZxgw0nOhrvr8kHf4KK6Gmat6MIXK1bzX4cqMxesjg7NLtbslYzLdW1+mWPVN6fEW+4ca1GgzZHiCjTD+O1ujf5gZHQ/NG3YAfRXopxUAjM8F2e7TNBLJ2IagedOe7mWoxAallAd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhyeYXj7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhyeYXj7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3692C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 07:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715325742;
	bh=H9Zc+YtHSyyRQye6N3pPIbvdLcKn1Aq1mFlx5+CiflI=;
	h=To:Subject:From:Date:From;
	b=HhyeYXj7loJ5i9QEtTuEVpDNocCMy82nesiIRGIYfqHcfbkgdTRKuuhi29gPHa3qO
	 szuf8iqV933ulAGV2AVybBZ9pKRyApXQljmBKJFKq+DA1pVp8fgBAGX9s8lhRNlBut
	 Xj3VdNfxmR4YHtfQUw9Ww+TI3m9pMIWHVizXRgTM9mQewNrjqSf5n9SSPP2Z6yaAku
	 aP0ZJ1NBS4cM9AqjQJpSfDVrQj49Ekrv0sV54pfakyMVjO4jcBMjSw5orUffzAX4f6
	 TB/A2p0WN7PN8uOA/QcaUl3GV02zA4OxYIwadkrJaZaPrI7Qi0Pae6p71MGD5C+rKd
	 G2+BjIsBvQnhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CC5C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 07:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171532574277.28283.16316860679823244932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6532b28ea32e41bee26045f9e10f4a02369dc19ce557b36b958b2922e8e0ab6
Date: Fri, 10 May 2024 07:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715325742
