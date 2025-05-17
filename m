Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88981DB551
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747469993; cv=none; b=LdisTryuEAYgjKB7uJR6kvxKUJhwlz4/n6jYAGSljUaTecYc2uOQyDOiK/i4+qI91u2GVBA4ADcGxE7Rf96h9+JD+80YmdlC96lBDHISMlgOw4MgcVoHH4erISCdHZmWF44W7h3Vf+BS8VfyJKB0CM+tjG68bOTnwodw6fuihqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747469993; c=relaxed/simple;
	bh=/VPc08NP/gdogJkSZ0HoKfhkyWz+Mh+p5vhPLfwDA1Q=;
	h=To:Subject:From:Message-Id:Date; b=WEp6GOj6yAV8n3buQlW2t5Qpn4ilbeg5JnBJsinD5iFwyHTxyLA6Sng8G4HyQjDCR+2qbcEVukahXi5w/Mhu5S5ZQrCxOpSfnSHutJD01LsweYqyFeQQVhdeT3qPmSk0jH/JSAOyE1AC4FfC6Hs/VUKAfEnOUMQI2DJo7QM4vGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1tz2KV9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1tz2KV9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D531C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747469993;
	bh=/VPc08NP/gdogJkSZ0HoKfhkyWz+Mh+p5vhPLfwDA1Q=;
	h=To:Subject:From:Date:From;
	b=f1tz2KV9jkFYQV7Oaq5bLUVX48gP6mD4seJhKQYNfYhZD8lwwyFPlS129prfVjeSf
	 RIHvWOdYd1cFKZejktq2IErweACKKi709bpRGNOdhKNgnIfA0GJK/uDwzZmkInQYCI
	 A451ZnjHh7+k91frqw9dyIUVYu+osDiu5R9cOuQWTdUhLKb0hK0fSGwVHBmhuA3SUG
	 l6TgD3Y0y/k5Atj+25dkvnm6WG3TS6wq3zi2Un+otp/vLvRYEmV14crc3KLhcUWBNE
	 o9PSO8k3VbQftAVBDxOUVfFKr0C7eb1Aeuc7Pf9ZlkabbYciperSdbCgBZNk/B8Lbo
	 uF0Df1Wa9gc5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E635C3ABDA
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174746999357.25807.5704446940572945650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1fcd2832da2d66be27a203f1bb7ecaecef339e64e7b1f6bdd4cc7fb42aee33e
Date: Sat, 17 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747469993
