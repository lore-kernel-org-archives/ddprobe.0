Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457222C2AC9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744757996; cv=none; b=p5SPTawlWTP6vyiVJVmi2C/PgE2uV3He2O+UdAZe7eK84mxcCLW8C+pN+T3T0MWxjUbdTWD5cO2nZz0csMitAnGbYpTHrQ8eO9qppH/7dtTl3AbNVp/mLhMlaa0n4XM74673o4gMuHUK0z0NO878rcI7+PDrSJBhfq1jTYdVdrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744757996; c=relaxed/simple;
	bh=61mV1ya3MO9dZ7fg5eoZ21OEMmrL2VYVy5k1b0lvD2A=;
	h=To:Subject:From:Message-Id:Date; b=tHgus4tPlcqDrVV+LBeqWU3nShFdI17/PZ4BYL6EJVZdggk5ShwWVoV+wX/vjVSIIQme1L+QoV4jFVzCHOlUWNzamjFkeFBJiSIzPcTIeRbGjmERXFlrKokyoD6ghp2xvdv+/Rtg5F4CHlJThI7d5v12M/98HevYJsNhQwxijWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wd3b2W8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wd3b2W8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF8FC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744757993;
	bh=61mV1ya3MO9dZ7fg5eoZ21OEMmrL2VYVy5k1b0lvD2A=;
	h=To:Subject:From:Date:From;
	b=Wd3b2W8EopZzF/YO5Thc+60m95WgMJ+GKry0Ur90OVTKFroepZZLThr1ZrEFFsBm/
	 d4PfHXBPGdkCrfO1yRKgIjRAKK+5+otXszrfyejn9ar8I22kxxKd7RYlcDtp1Iah9e
	 1TfkRj7Si97UuhuD/ZGj5h3ntdclP1A8juPGspt6GljjLlgHCx3GnLbEwdxM/bvczC
	 iiQk+I6rvmWdgHJG0PV+sumJW/9dJLRj8UoFD1rseTJHasMg8r2sHJ8HNMMveuFXEg
	 918RAqn5hcAd3MC1JIbOwVG5q/ETEbwmYSaLGeYgKt2eWGA3Jk6itHcB5PYjqz2MxN
	 KqnAFhKqeZ4RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA8BC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174475799363.1130.4249530866697025710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 180347af6e0c7eae9ed056df041652a17ca9595c615a454b8628d5df92ba57d0
Date: Tue, 15 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744757993
