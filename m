Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC421327E4
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711654696; cv=none; b=PnF0Lfwo14IqgbEL0GAaY5wxuOzHgGW9zH69FXIAJYeiMFe+1JaJW44u4hRZiKFvejv8gWyZwSo5lM9w81p1FxwP4+Qy4ztabsKT8HIVrz3k769VKrChZaQL34MWuu43y4wuWhhpcElkEQLP4bUtTNrKC5FaL2uk4VN+h8yZZaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711654696; c=relaxed/simple;
	bh=3a6JhoylkbM8Vmjw3Tq6zqGaqACW5z2Sx5wBJGlgyW4=;
	h=To:Subject:From:Message-Id:Date; b=EGnx3IN8xKFF5bDf8ucf7qKCJcdeRvOxEz3kOgKK42GHF7wUpKuEWpZkuD3sY1MMTAOKORXmXjgu+x4BoP0I3q/oAxCamfQi1/bLq3uio8e+JRTDU4/g0Pw/vrPe4r05t1YHBmh+ZLzzuZ/EV8awLCzq7vD5ErPUxtYn9Mmbsro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVINoog0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVINoog0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84890C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711654696;
	bh=3a6JhoylkbM8Vmjw3Tq6zqGaqACW5z2Sx5wBJGlgyW4=;
	h=To:Subject:From:Date:From;
	b=AVINoog0EAgcqHb5B3kudarqSS+Gt0ZoceLaZmbRd+EOCX6EkIxzi1F/G/OsNDrO4
	 q0TZC+oOfOASCJAmyu7SbVTYrnkE7dG2OPg85sEw/fqdQ+SUec7UtXZyvzgkdJNSMw
	 CKJ9vfKxEAaR8WI8mF/VC1Qw4kPEXo2GqUJuqNXy7uIqDQwXSq0MTmKcCairF9UKSB
	 /gUvHfhy7Uj9t/63iu0F9ieUGuMHoKZy+a+o+xvJg8bTKBEO/3pdRhbQ56SMLwtU8v
	 ahQPt/lMWrqX9iDP2CF3fmo3LZltVZfXC2pJlpO6d8HMXClIGYFXTL4L4DwrluDuvG
	 FS+xvE+1M2aNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F3A3CD11DF
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171165469644.3639.10503417320673821380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47013d9aac7b8779568443faa533226a7c382cdb839db3c36a371aa656beeb05
Date: Thu, 28 Mar 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711654696
