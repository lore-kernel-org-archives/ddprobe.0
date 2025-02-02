Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEBCE17FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738472753; cv=none; b=uygkR7fdnjeDL3zYdwhhFkRPtmM8OSDZKgzvqlSDEHN3vspAcyK0Qr4/tuqn8ejVwIy9elVf9PgzJh4EqTMdrD25U72JmR3lJvE9THu8wMkfZKKsiKpgfozrJs5xeQOWu7EjNodHY1/gd9VmYwpL+1Ap3Hilk4xfZOV/PMYpmzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738472753; c=relaxed/simple;
	bh=BPFn5VVPqZFYerRYP7JuMVV5uGZQlJotilnSzZkpK80=;
	h=To:Subject:From:Message-Id:Date; b=PzFG8swjuPGIDEOvjS7kELHfY64HPbJ4txbnUkwk7jCnC9WuWFhsMSE3Wg4iDRlqtba8a0ASg4Eu+hzTk3szUqQA2EdUTgWoBNqBHDPqzklyGnVxviZtlxdG5MfKu8Nj4GLC1NMaMT3+3vHRY7j5h1j9bjwh3xVusWNYJV1is3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJH+ou/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJH+ou/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC66AC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738472753;
	bh=BPFn5VVPqZFYerRYP7JuMVV5uGZQlJotilnSzZkpK80=;
	h=To:Subject:From:Date:From;
	b=uJH+ou/EoNQPVs0KRSs9p0Tc8NdjRWmk3i4ZJpq+bJQBPcCcmuYrwyyFv4zM3+rMK
	 hO6YdYJ9AZxayw97mgLozHmF410rczjQZEeSoYTZxqFf8dZz/IC2LXepHLEZ73mH/h
	 CHMBj4iMYKf0dXuDVv7DvRIae+V9sxVoNab1gpxNyPRdwHNhfs7sxjY8tDngO81K3R
	 1D7T8RidxU9iiT50/6SSirnMxDM88CLLR09ml3c/6yTgfENHZdZfLQTuzW8s+1KdZE
	 RRbTng0iyPYVvCzyLOC8l8ITkJywb5cW0yn9rKVaLrhiPu+9CB2Md1uYnf2LEsa+LI
	 3ay6g71FxbNxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C44EC02190
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173847275360.14974.13875467616661771474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc470646e9a8971ca101ba513d7f686a21dce826c62563291df51b617f02c5c6
Date: Sun, 02 Feb 2025 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738472753
