Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDA1F22087
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753844393; cv=none; b=K7+PKHsnuONSYnIQHHiQSAmwsC8bmi0VfGQM267+4yT+DXs5TNrJgQAUY7MnY9/4LbGEVBeQsKoOmiIIZn5vZb8g2sVw6BZgqpGcm1Vk5HclujKKopFtsm/U7e1TSsxHERuc/16ccePrJ+UQ+ncef8UGvK43R+kvtXURPBw7Sn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753844393; c=relaxed/simple;
	bh=zuwMvV6LlE0WeEAtK3IvhxjJ0xsofz9nuUXc+MovmHg=;
	h=To:Subject:From:Message-Id:Date; b=DG16w/YAEABadtSzCUMtA+rV+jLElkC4Dp81YRTaSR1tqbQz79w6t7Hitw5UdVZJGWN6wv6cFQkRUjssLpvehEXmv9OD88V+GHDODTJ6lAnoObCeHB6lrV8MhdkOntHFPE7ObWea1YZDMFPuQkQu8Kxpdy2EhiA6RxGZ8ZpgXzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKWqgfnF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKWqgfnF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39D9C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753844393;
	bh=zuwMvV6LlE0WeEAtK3IvhxjJ0xsofz9nuUXc+MovmHg=;
	h=To:Subject:From:Date:From;
	b=sKWqgfnFMfGwB9dDCDmKm2hqUqEDLIwjevRbJYUcMnGco7zmqf1Lcp3o8BpWGvWZ8
	 gV1NlSojsf/DHJf5g5tH+9AFq4Vki9oE5ECJMOTvDaM655nWptbBbZZgW3yyyA8lnB
	 lBoGr4UMpgcJNsr75fgiCa3PUczCiDFLpnEeTmRSuDFFSEsWQEzX24cVUXJJFHqm4M
	 obWZpRoorJA/wV4XzECbzLpImz6iAit0QyjpUpjkEpAk1Kad5bERCeH44Zu+RwgTsV
	 1cPT2eFaXrpscwcZwL4/+n3mHWUDm/tirWj5iove3CyKuvuQVRJd/QxaI1pZxu2T66
	 9Hq5Ea7fdHOWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC2EC87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175384439358.24539.8924403557264449067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da8210bd968013d03ac01aee3f173dcad1881189613ea11466a1ee9ed7307416
Date: Wed, 30 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753844393
