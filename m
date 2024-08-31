Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E11F74C08
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725133554; cv=none; b=lUBCOgUNTYekOevSERoaF8HhHWkYQjX8qLWxPXhTn+Iyy1yBWqGBzkNZuRvorRf3GMN4nqgPuSkUgNjOCLjqMHWg/WxjnRNjdmiuAVKE5n+jYu+XVrY+LCd1b3ljyIQtm4AbEYF5PONvCoiTz//K4Ggn0eEgXjcesFogI1A0GKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725133554; c=relaxed/simple;
	bh=jUUXlmDwmBFeFDIqXkU1Ey/iL7qvzb2Y3uWWACj43Lo=;
	h=To:Subject:From:Message-Id:Date; b=Tn1P+hrM9ltTpUGo7yan1uTl97fpdqJH7I6WcyLPjPDPSrlAOJ3syEp7cwvBW/YU1VVjUfjCT4+eNXGD2M0k1lsZqBvUj6T6wjt21omDpdGWC8dYEgFijjSvYYEEENm3UV2scX+EjiJPtOaTTYIiQJOJGU4/7kFqjEzU2xK0uSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rM2QGcZj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rM2QGcZj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B57A2C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725133553;
	bh=jUUXlmDwmBFeFDIqXkU1Ey/iL7qvzb2Y3uWWACj43Lo=;
	h=To:Subject:From:Date:From;
	b=rM2QGcZj/W/o3ssuY1jJdpL8VkkNe6DQOTuk66yRft61yKolhu24QLBgJzFHr5MRY
	 nkHyYj3IsxtTPGIt1QCFejGdanrbHbYMvNzNXrGq4209jQLy05bNUI82f6KB3oTBIn
	 oXs3Re/xw6BQoZUGNeyd5naCJE9H08fA5EJGgo2TsiuqkLus2DuRG0GsXFBLQIAfzC
	 DqiTV4JYPiAVnFf71o4B7txS7nC1VFGIeQwefcXOnxIenNoobDln0j8LIZSuQ097ia
	 W9h3eQNhcfHcEf4kUmjTICFR8Ukzrq7tNxSPdrmQ4cthpWZJEIJ7mEmaWX5MX33fvB
	 HfHOWigAmOCjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A43CD13DF
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172513355361.11855.1241858899682540149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14713fcce9d461d0217438310804a58ded29764f7bccdd0379564c07b75e37db
Date: Sat, 31 Aug 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725133553
