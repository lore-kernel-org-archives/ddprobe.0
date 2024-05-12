Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494416FDC
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 21:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715550143; cv=none; b=qKAEUIku8GRhey+4Gbx5y/1+v+YTExJu1oiFuA35hH3EVuxOqZca9SYf0O3AS4MZbuJJyO+5H2LhE1ZdTJLf7kH11jwoL5WRTGjtufpY+NomDvm5oSgQS8CYjgkuDFp8TsFO+vq81iM2pZ/PhAWwtn/4GbukxPZPJd/oRU6IsoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715550143; c=relaxed/simple;
	bh=CqITkLUQpg5PobInLhqH6NT7tWgWqKIoRgEuE++vWXI=;
	h=To:Subject:From:Message-Id:Date; b=dC8yWNIX75at+wJAneWj7ZxgCW53+4sQSvGEQkzDpBviqpuVG07WofBnJQx+0PyWDEAoGPg2i3brWvMO4eURx0WTguUQpOpA3O1WdjosaX/nlmwWJRi5viGaFYR/037rkbwGJ9qhga6gjpAc/JdP8CePb3U7PYUYecSR6AiXDmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJg3kONM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJg3kONM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD2AC116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 21:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715550142;
	bh=CqITkLUQpg5PobInLhqH6NT7tWgWqKIoRgEuE++vWXI=;
	h=To:Subject:From:Date:From;
	b=kJg3kONMpL4lS/tD75ZMdjq+yd9KE5frdgYXESwU4rE29Uy9JvpP1l3g7SSudkd4d
	 kLwyXkrMkwUwncYJf7umfrhlkrgaLZUN9kYlUwNGzS09f+ik9CztqkIOoFebl8Ht43
	 sZwwoPoZkHOsg/P8O2Ks65lrfC6fVNdAWVVhB8ob8BEWu6gNORuVPQkh6agwA3m+9N
	 jskubWXbA7E2Q35zP5BEyW4ig2JN6kwUoXqPfh+e72kvnmd7/eFpA8CuM3aAu4H32y
	 6gp4KJG1nkNa1Fvl0eCvEWiGrF+MS3zTgxzzbp+b2p8MESBATUFv01V+xyGYL7DS9W
	 lXGK7sympWRXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F94C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 21:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171555014277.18913.6886813134585176846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adbb137370de5df4886bba841607295e38b02a31a15ccaea14afff7cdca60bb6
Date: Sun, 12 May 2024 21:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715550142
