Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D18712B93
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723996554; cv=none; b=W8Ehn37obqw4D6oXbhyEcNb41RtWxNfnRJW8IdxaGK6dkFxOAyFbonJEblr+gYki2DcD8GpRD8gWhS4DAbDoN0br+HU5cqqM8VUQnaM040K1T/Wb3WQJGHOrazEho7/OM1TeDEoes5zYmkQYQk9U/kkzyU0e+yvgexowN0jp768=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723996554; c=relaxed/simple;
	bh=alfYBVEY91t3jBdqGBk0vuMJLjIKzDkmP0dUdSMLbBA=;
	h=To:Subject:From:Message-Id:Date; b=Db1//6uSU+kHqYyVyKD+/mYnWI8KVHpzXg3HZRJgaGrif87qZ4G15KlYRODz3WTCxOF8zWAJj9jjOcS+ykW2aBe9fhZvVLuJIxdA98Au3wVccQXaGMz5vZJOv39l5g7/ikY4RK6R3Z0oopt/qqUDbY4pFJAQfmoyNjVSJv5kHLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZznocPom; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZznocPom"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9755C4AF0B
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723996553;
	bh=alfYBVEY91t3jBdqGBk0vuMJLjIKzDkmP0dUdSMLbBA=;
	h=To:Subject:From:Date:From;
	b=ZznocPom+tUcWJ6hwAztHBc5FYwV/9BXNd7MgpU2SuhMxwgsTPJ0ig3vwETVRJ2Nz
	 4EgxXAVhk+b/4eOgMf6BQP/0XUpSgZlE8tnmiGEOHvZ6eZzh/3q+JgULctPY4En/+J
	 Hw7TqU+6Sbl7g6EekuMOT+9a5OWMDvRT7EWPHakWlnfByso3BqbHJB4vJBX1l078hu
	 yB4s/9O7ynbdGJCqbctk7AsXu9LGH0UyE0LUbA30MWu7Dbfsmw5Z9Th+pzwUlnBdAy
	 OXAO9YJLTnFkpXF3OdrTtMZGTlEWcNizEw++VT+4b3qhNMuZAWIFpAwXh3MH7MpxdI
	 ZQKGZBCGcqBEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2170C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172399655368.9753.11237577136879968326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c630330d9ef8300fcbd983250f0c1f5a4a438b4bab0be01697e37ac62339bbda
Date: Sun, 18 Aug 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723996553
