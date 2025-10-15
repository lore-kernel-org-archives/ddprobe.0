Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AC9E555
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760507394; cv=none; b=L4QxwF/VTrFXX9QpweV9r/OZfTODHEkmXkoMQEFO+GnUp3P7YA0DbH9ZMrmurAzJqAshsdHOtLeKxVUwVXzNjRYhHp+cuHW7rVz3BsK6KeEfKghG9b8/yD8urwE0TrEO1Ffj/UAkuVsDGVshs9HP0DWRsM8ViEVrYAv4du8lRhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760507394; c=relaxed/simple;
	bh=kH4f8LKYh6s1Kx+2rMyzlZlDjUVSDFg95ntTqHLgniM=;
	h=To:Subject:From:Message-Id:Date; b=JMC1evcPpq4fb28GVmn3k7brpH1RC0/rFR3NhGwrkklJjKMEmJcY4atVKAzMbzclEIoUvJ5UwDd9JfW6hLYBPRRu+ncDQnY3njZ67cjOMhsY2hJcLPMfmmzrobCnfp+WZ3mx8CpfOfLVC+eLfb4Ca8OiXPrvK+n00bAzIy54EUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qq5c9sYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qq5c9sYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A376DC113D0
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760507393;
	bh=kH4f8LKYh6s1Kx+2rMyzlZlDjUVSDFg95ntTqHLgniM=;
	h=To:Subject:From:Date:From;
	b=Qq5c9sYFCLG9rD7uqKsSkzH8NjiJBQYHq4akRtnukGRu28X7yjXzTDyp26ogDgYwx
	 PmdO303/uTVXQijovo28n2gV6Yw+u1GA6Sa0XJvjgtlPM2WFr9Qo/hVHErQgGNbGPs
	 R+iH2mcFJ6plEMxWj5BccEXVmzsA0CIRMrwT33xNGs0jnqbV4Kca/BHk/RJiX82K+x
	 at5/Hskrg81etKyk7OtqI3HyOMx478MH1H4zEIktop7VgspHgQDwsGRRjXEM2et0Iq
	 1ipvfBw+zJaygaosIiU1vkR9NJEEudD1ohZof99zdPU8awzzgs8WaLLyQEwVU9qkaE
	 uQxeq8n8xMnwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C9ACCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176050739358.18796.757403085600473876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 109bbb0e9f75ab621892e39f5827d22fe39b4985af09c47eb87a34b7045feb6f
Date: Wed, 15 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760507393
