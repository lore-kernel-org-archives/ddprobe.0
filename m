Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2105E2D8760
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 04:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764302576; cv=none; b=HaBOPcR61u6ZbgiI6+X/eQ5gD8ya4aZ1CvNqLXxUf6EHM2A8C2a5U8MleV6082z7pSvgD2MLedO3Fsc62WHQHm8poRyZDLr1Au6rl2DbyeL02qbVGTNJC0y4MYU3cGxjfs44tvbE5OeR9C7f8kz299fMK1t2wEgMh4zHHm852A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764302576; c=relaxed/simple;
	bh=6HQfBrEG94NFlyhSjQxrMWFUlMkYo0kOReVW+ulQxjU=;
	h=To:Subject:From:Message-Id:Date; b=Kgh3UbFjLqWx6h2D0Aul7ssEwGcGAyCxnBD9dnasEMBfXqOaJ7AKqbiDSzG4ztOa0LbgGN3Wj5hJYxcnAtfhY4XaoGJb/REGCxdSseFlizzt+KqD4BNU3eldnoGy03AQD5Zlhr3b67dOAirFxF+w1ruzF/fSf1TcrFReha52jAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+aUAwLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+aUAwLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B15C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 04:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764302573;
	bh=6HQfBrEG94NFlyhSjQxrMWFUlMkYo0kOReVW+ulQxjU=;
	h=To:Subject:From:Date:From;
	b=N+aUAwLiBGpFwby55Xe63tos+yvYU6Irk6AP7XPQ0SZVdqWkopFNCsE2OgH6/p7lk
	 NB3hToSLBHGHu9FWgWTUS6ytQYM9oyniVSDz1nXUY/9jfMZEyNzSEIusYMW9I9JchJ
	 +yVkCK31qPaBgGCJTb+CXiIASgd6u5bPyiLW3VhEHbB12h8Iv4AP1r0tGZQLYzmVf2
	 fe7ej3Em3sZ0XTUdLH2yF5u3Ugs5HW6fD4WHRk1c1LwPkYJ9U/bI5Wv6gatrJwPc4h
	 SbpnfzqXMaBZt72AgTQovZg+qXnSjQPGX4fpkABvwzk0cTbyXzzniJJO1yma3ZmcBP
	 NsYSo4KtavSjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91566D116F3
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 04:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176430257358.10025.1285969025235428702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf3981101d405354137ef645aa51fb9368662347d43b437ef87c28732dcdb25
Date: Fri, 28 Nov 2025 04:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764302573
