Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD3D84039
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774485294; cv=none; b=eOzSUIFYVmAJo7Mc4OFlaXv8qqAQ92LfXjYyZuGMrwkAGHoP0E4n2s3sfQXQg0y1vwac/XtpUVDm8YkQdzmMsE9A7XwRXPAFERaC87ZWkEFTqEn5LnQxS3tQOdf7JAAp1pzU4mEhi9qAUeDkD3N1djdwEvJD7BnrgYyHyh+Hi+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774485294; c=relaxed/simple;
	bh=Z8Wm+MbMeWQ01wJnQUG/5ZoWBM6igJK9Knmzn9zqnP0=;
	h=To:Subject:From:Message-Id:Date; b=OQUC1pDHkaHyJK/p3/9XlN5s9I79f5Nx7OFTpu0cMjuQJaGtAnd8ox5U/anq7enik62O1YaA5x+vKSJilsdJMi/IHo+AmN04prD0/w/d6ekpIC0e7VCGzoB5hnESeJEEWVu4gwl2nPE12Xn//kd4hpMda6AkNeRJC4jHWcyVpTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdC1be4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdC1be4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2979C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774485293;
	bh=Z8Wm+MbMeWQ01wJnQUG/5ZoWBM6igJK9Knmzn9zqnP0=;
	h=To:Subject:From:Date:From;
	b=IdC1be4lds39J8tlS3WCWwri8gESfJ6320hcoYJJYPRrI/3d9aoghCe3OOt20X83O
	 UtMjCMrorJogDjO/dBq1GVLlt8gX1EQk2hCnHza5vgx+lgJ6VkBekeRmoGc94ewfdE
	 MWI7qo1GqxwNjuYCldebBGrFPioh/pOkpWBOn8QOXMuTKam6eS3MsmcD+RyRN3gyP5
	 FNmiiIdO+DKLQFv5ZpuEpBD9Z76xVncXyQUSFuGvDVPnN+VqHMQxh5LwlEMOUGCXjX
	 iWv1pn7+8pBTJXt+ZATe0Dwy7SBGWhjSNqsD5rbH71No19+rvd0IZ47kbr32yvVakL
	 qjFgGpz9Zqqow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92693109E52F
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177448529358.14746.5864603945522271588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3708887e844a23ac8b7fc2f89477972852c15bd650310db33ee3df59c2f54f18
Date: Thu, 26 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774485293
