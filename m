Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2D86BFCE
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747144794; cv=none; b=E7hZ1UDiBbHjN6hq/ufyuRCQu/lsW67pMvCjsBZZvTr5yEF2AJvqtuUcDsYuC1vetHHBgKV7otUXQYr3xlwhlruuDifcqYZg/gIlXm9eM8mvf6ga10HMTxZMTuj6yMjVWMwvnP8RvvAtqwIkgOMD1ZpHEjCuEQmBysIL95H2FQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747144794; c=relaxed/simple;
	bh=xq71kQbYGm5TFp3tnl29hrDh4QO64DIL913mJvP3Gv0=;
	h=To:Subject:From:Message-Id:Date; b=g9UH8yGFXaCDRTmVnoo9LQ0gMwfioMoxSBY5RtetQk8UqNz7KNlJj0tSyD5bNUGMf2cHjpoyv5PUlPux5n4P3MQWpuEQs4ACW0hENYh0942oZW1NB+/sGtogm/WqH7/LNUVYyEGqW2Zd1lhRqtVEfAtpALvDYDvshtKDckJpffo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaZ3sE2d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaZ3sE2d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1B3C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747144793;
	bh=xq71kQbYGm5TFp3tnl29hrDh4QO64DIL913mJvP3Gv0=;
	h=To:Subject:From:Date:From;
	b=EaZ3sE2d/h8et9/t+vpqvM6FXqT4RsfqFMiIG3J+x/YddddgrIu8CTXl90TFXjv8m
	 VdolS3CicA9ebbTQTwNQJIb1dY/Yuc7t62oOg6ecPwzxMQzVkcxyDQuwL354wEcegG
	 Uu77ztXf2mmYuHsOMb75SS/e2kn8fDIMcwa56QCQQfJiI8BQxH4D4HPxvZtIP9+oFj
	 Jr1nGKqpw21EWDAruhhVHZgFm7Z3bfwRF3fEB3PQ9HdHVWxJLa+yNJiuJe/zqrMRKc
	 zvmuz2qaDQXa/dDdFOVVLP0Ob6MsWbsfPaP8yNlS9cl0OCGWLuRIRzegyvukodHC+a
	 zIKVEvC8Oeb6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985FDC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174714479361.2683.397375080133169745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abed4a249b887548e99393b1de81e7114510a8ef86fc25db47ebbc8253602862
Date: Tue, 13 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747144793
