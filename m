Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333F71C460B
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732626954; cv=none; b=DMsRcrLRlhfADOos4YP1KMYpysr6Da96v8D7YPzf6M+1CMGuMNTOok6v1Tgo01ioqyBw+GebFWQgYLIBNv9uD0MOp91285/GL60dPD0DPjCXWF7zzHJHFXJ0ea1Z5RA0AhtImTiMj+IuDZegdSLD8Ik6iovFgkECoJFnmdgGP1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732626954; c=relaxed/simple;
	bh=S9Jr/dOjAaXA7O0cFcqSkQwQU12xVggECkH7z71UQYk=;
	h=To:Subject:From:Message-Id:Date; b=A0IsLvi3NlFIKTNFkw89wV6MlUJtLSdbLGeC7AemOnyGGdht/ggV3Gb5hqf27+ZnVco3NK9CTooFqi4/LIrxjbsKbajbCMwKd3V9e5Kwb21git/LwVqsllcW1o3v6emLhuEs7ROPjeJMeOqx04IR7naqmkeNh+sRe3zhCMAfVEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osu0m4Zw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osu0m4Zw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B80C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732626953;
	bh=S9Jr/dOjAaXA7O0cFcqSkQwQU12xVggECkH7z71UQYk=;
	h=To:Subject:From:Date:From;
	b=osu0m4Zwbw/rcxHgHZ3V3D1QFPpRgQ+S3WsD5aqXKMjD+mjfJJKPyKIGVphRNRhXw
	 9RN8v5L5Uj7DdIEplnPKMQcuZLceK+l0FqCt8uAhqFeTfCcsXdT3xRxDAOo5Msr6Yn
	 cCgcshC6fx4EUPX3inMLBo5dD0Tox3EQwOqTyvf2exFRuqqVLZKMrjsNGanGqHJL9C
	 Zsij3qzJRJ2zqCCt8aNnPRO+BvTurG4PF9Ar5u4P3R5ovO+aV66DtZ5aUX7Ekopn2T
	 5ANWQii3n8sj5KOo9hgwn/97il+QZfIEh8sRd9dLOGw6KSFlX6m93tKxPQAfv1J0qm
	 14XJy/9s5Jgfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979B2D3B98B
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173262695361.4444.2611957115648918784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14488bccb9579a4ab941631bdd374f2bfdc3ac436efe64390e50a102190f036a
Date: Tue, 26 Nov 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732626953
