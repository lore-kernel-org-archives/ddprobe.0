Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C5E25D533
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746824994; cv=none; b=mWJilFRI4P9SoQ2uaCJks/8ckzanZODjzO0+jXf3+J/0U+MR1KYaedIsaN8exIcnGEJBIk13lc895UAPLovvy+5xyviGLpP63BztJBKKfEtOuW40Ubvk0RekQuBlqR6Dm7x+0Sm/SI4Z5hEKJb4xp395TqDOfjp8yp42duphQ6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746824994; c=relaxed/simple;
	bh=T7QZclQUxaZdh7Xs+o6A/b3fbcgL/0IYFVBCbjwVeJ0=;
	h=To:Subject:From:Message-Id:Date; b=ikr4WA81deOd1iOfoU2AGA7Od8D+VVwbZs26woDLB6oSnIHP/7mdEb0i7BRCUfHx0aXcrLaFiJmk48NbZF1kuiqjFd+Ome2pJ3+dZfw1E1v+HWAnPdr/CjBv/xNPPFPOeWUwfazH6Bke1ZlOXWKABIWX9R/w0QVVmbXuajbcMJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ssw/6wG5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ssw/6wG5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8DBC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746824993;
	bh=T7QZclQUxaZdh7Xs+o6A/b3fbcgL/0IYFVBCbjwVeJ0=;
	h=To:Subject:From:Date:From;
	b=Ssw/6wG5YyCneNUoYCmS3bkPOAVSZx3Dd2tTwZYe/Ad9sQ6L7btTdybKCKCEGiDtE
	 +gGZjhkQGrTNJ22LsZ63l0DM6Gv12CC0Y+LOZgRQO1byTRMlQTLK4PIKaI+Qtgykv1
	 Ki8YSV5jiiD48nEdGPa0qXLjmGBNSxe0cYNAXAXJGOpMbd6jEl8RLr27Ti21H+dtbI
	 n6KU9v/MSVKXJ/flqGKcmY2IbgGCJklyNsqN+LfpQ+8l7rzU/Djn/xi+r0fo9Ddo39
	 fzQ0KLNpFKZKVB+tI0xl1Yte0udFsKVXX5yr3zV7mRd+SbAAlPkkqjpJ3PXPG+fmLs
	 TfOtJPB6s9D6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96978C3ABC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174682499360.31598.11504475470645455700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00cdfd4dd2d13a15d33d2371507bb1c735ed853e936d51cf10358c57190d301a
Date: Fri, 09 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746824993
