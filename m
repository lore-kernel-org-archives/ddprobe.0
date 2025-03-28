Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE7BC2FA
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743178795; cv=none; b=UDls2onRBgn33QmjnGnp2czCKi3OiNkIf6mwiZqYrH5H0QWNmRsMbpZXjL7+AOvFDYaRON1k/QmZyMEMX8B+a/fiGwR7oW1puIIY4w767BYbFgYEvQHOb7fZbCsaGnuu6XKgT3YvWqRyvWEJ3FBkyr8lrkysD0k5AHljQ9Fi60E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743178795; c=relaxed/simple;
	bh=ixWZl3+00sqsn38rcd3RC7PC7UV5eAo3oyIb/Kc9im0=;
	h=To:Subject:From:Message-Id:Date; b=VnsS9EEyYdXaeo9eK0Xi11nLftaC+6vuJg86oS/Xce6KCma9QfKwMD8Umkr3RqvzdKFLs9nRg8Da+IZ9OV90doO7RWb6Z+ZY40c6KMC18vvUDz+igcUkvuYK/tZvRNKUIUwmcGhhtOelrTp/GlvdIcToejR1c1/JNvfcWg2pWqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ltv8bCyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ltv8bCyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35A9C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743178793;
	bh=ixWZl3+00sqsn38rcd3RC7PC7UV5eAo3oyIb/Kc9im0=;
	h=To:Subject:From:Date:From;
	b=Ltv8bCyvBhXP6S9BnX7k6E3YF5DenjwfZyTAQYc5pQUxIrHTY+r2uR1wuqgX28t+t
	 bj+EnKEQ8lfbE2/DwvF9+yGenoWL9b+f7+wVoDurLDaN3a9tiYaBkeTOiFFaZAvWIc
	 yjYwE7dz0qqnagNhQCf0MpsA8uaaB3sYmME2hzWfAY/acCuTFmNg7pKISI39Ya0sIa
	 WPx+7S5okeER1lPsdp5CoK43LjNfzEhQu6f/usoV0JBvMAtviZyXygi9YeToYP1EO3
	 K9Iu71r9grTS/2N1iGUFaQu4SVKf3uHMVPKIOM8SOAB8Q/JhB2xebu3UgggKtcGP/g
	 b+l6aqoEYyqxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAE9C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174317879363.23304.10362650703411538518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b75b909069db60b558c47d36fac9b34dbefa28c48bf584cfb358ab5b3e17cff2
Date: Fri, 28 Mar 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743178793
