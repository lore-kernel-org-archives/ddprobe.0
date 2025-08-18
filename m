Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB7E1F12E0
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755557994; cv=none; b=WD1lxm1rerSASbUsaouUK9k0bkyD8oPOvIp8+MxYiS3WAWrNsooZ3FGUdJBDxonX6g8ZSrlqCTReegfm1d1ycmnTLiWaqguh2i+Pps3MkesJv8jHw6Uf5tWPBvyxUDpKeNWLwqvim2UJAYiJOg33AZFi7svJGUJmIXufHTya0k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755557994; c=relaxed/simple;
	bh=2T3uu3+8X0dM2d7ZC4RLMSDDFdw1oOeBzOtfQQvK//E=;
	h=To:Subject:From:Message-Id:Date; b=i1fySnAYFk2BFrOsG8iiC4+ec95ddT/4odmbOp9U6ImiUUNnn7PZ7qKKbb6TBC/NRD/nrdWQyEtriAK/ltd7vAti2sJCiUu9NXKkECFeiIcBsRwFIJGIMxR7QxlYu6e1dR3PeAGk4ex1WeMwll8/qFh7pS9bVGAR5FD9vIoJWPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/N+aZNQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/N+aZNQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D990C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755557993;
	bh=2T3uu3+8X0dM2d7ZC4RLMSDDFdw1oOeBzOtfQQvK//E=;
	h=To:Subject:From:Date:From;
	b=l/N+aZNQn4Nf+gQcEjZeffy2uOAuI/2NUB6fzJG3w2Dl8kuAv29h0X8r+OQvrII0u
	 T6t8Cyd8zOkd0bqd+gyCdMLnBKl9bLjQZ+7PTUMaXwaQJG1m0QdrjloBg0rnd+ulE6
	 yGmsUUqgzKE8VTS+EGg9fWHzxONoNSlI56W5d6fHDF9vOMNEWpXseAyaIF49crmmVm
	 FW4yah1vfxjSaZYNt3brSTyEXVqsjjZz03BWCBGUDGynERw4NIPRGAVNT2xV/+nQhd
	 qVRucKCI0/Xcwr04UQtlDjlUYSTq9GPuAKF3ALQ94Z5N4kNFR6E24PmomQJr16lsq4
	 zsktq24PKa7Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA17CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175555799357.19020.10435851786578169127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65840e99a7564457ddb6f9c38cf0e40924a2a941a841a4f325b7854af4d28ef0
Date: Mon, 18 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755557993
