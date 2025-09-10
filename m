Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183D5322DD2
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757514594; cv=none; b=P+6vetSXkmXJrJK+G92GlE6igVbaN5xY27byB7mc1nuNHgE/QVy2JfbBTf8XliES7CAIv6wmf2kjUOYpmHKBOuPr6aIhqy3BNXtlZFMQS7FOV9LIuCCJD3YqWq6G0vpMX7Y3xo5PPneaIxjArV/8ApTN9Hc/iE0BmK7ovMcZFpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757514594; c=relaxed/simple;
	bh=SzS9U/flsTDZSQojlTRLWTv5zIKxIFB6JaM2DV3K7rk=;
	h=To:Subject:From:Message-Id:Date; b=pL7X3wOJ3oh8Jy5FeoCVyRhF8JgTGTELTEMd3QZJFaTV4jDnfZ2xttlRaYL+YscJ9s1MvW5uMrh1v0DYnV+XKhCrFyEDT4nJt3M8E+rd3RhE92fX6Uo7keA/rhXoHBYogq7gQLCoptVOx5uX4kY1Qp0M2jGvqTCb0C3nsw5W5Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UirA9kCy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UirA9kCy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C3DC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757514593;
	bh=SzS9U/flsTDZSQojlTRLWTv5zIKxIFB6JaM2DV3K7rk=;
	h=To:Subject:From:Date:From;
	b=UirA9kCyfr4QY/WHZVtK0c/btvzE0+x8976+QG0aN3S09XS+sGZRTHvJ+E6no/yxc
	 BoAM+30Rb/d/3qkkXnA4aZs+aINR153BAShPFZvF0s4pIApKNuMeU6hsI+XI3tp+J1
	 3yCdR2IBiSI+hxNbUte0b6qWsxCE/4gO5EgTV2crYe0HguwcHLZw3afUQxZsQwMpti
	 5WAwVChF30Zv6mWvkbA1IkFP+J+Y7CgiywdpzmHYZ0UpFXxSHaEUW3nCsaGeoaq8cD
	 pNTfo1yaQgl6KULFb1iLntX6vbMmKODauLCtcrkJqi14uNfMAoO+Fk/LYPP6LZqA+E
	 z7rcteckJS4lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906B9CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175751459358.18969.7867741996939544735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85a417df3977619723aab8308c162010d1a8901bfc373f75f5fe2677de2c649d
Date: Wed, 10 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757514593
