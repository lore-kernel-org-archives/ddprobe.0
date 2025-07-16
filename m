Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1A03C2D1
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752697193; cv=none; b=GcE/acs430rdwErWzmzb8Nu+Qi3Gy/AUMO3QReNEd+Pc7EHPunvXWiJt1OnpcHE0NhCOrqTyKHmj/fEZDQ/dyOS7eRKvJALRVNNQRYJuk1m/QJVguov9wg+RGWnu5L9WyHmbqyLHoOFx5D8H5yfN8jRImjyyb2Ux6CPNmhFv+Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752697193; c=relaxed/simple;
	bh=u20Y8rgs0OaeE0Ryd+FOl4kOrH1+o/Q3JJrEEWjOkGw=;
	h=To:Subject:From:Message-Id:Date; b=PFomhiHo1y8YrAJfUXDecdYeVpOzVnBzehlARq1ts7k9EJdZQXs3AkuRDNq6WA4dcO1PTlrKkqdYVSPJr9/Z1H6Zju4Rxzrvt6om3tCGopb8QqoaMtavLQp+jRrUBSxr7Hdi81SO9s9g0qoU3Pa6VoZD4pgUBGO8uVMu8atmFbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UiJ5SYs+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UiJ5SYs+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A76C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752697193;
	bh=u20Y8rgs0OaeE0Ryd+FOl4kOrH1+o/Q3JJrEEWjOkGw=;
	h=To:Subject:From:Date:From;
	b=UiJ5SYs+ptJNQPSeZvsvdQ7BmFZOfpQoATc+pPRJHZPJzxVdrgChjPzwkKSNbpdqf
	 uLEEnPJFf4FUzlgpZTsy6rbLh3erL2RUPa8bmR87DrWRIBYeMICDQNYqOXppwPPNsF
	 rmgwMjw97/j+AQjmcTORggPMlRWkhyAbrVkmrbuTXQejha22KgTfGVq3/8tZnG03Jl
	 Q5ZBxw9Lba77bCg+dfBwz+wjudiNqmzN9vg6LuEaGvZsxJ/eKl7GxlJ2PjmsOA12B3
	 vfUYkLrz3INn+U9msEzBO0NLCVJhnDlRnI3XEhMYIO4JNh5BOAGjrTib/K1ohhcToa
	 iC0kktCgDxLpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F9C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175269719357.28025.10557482598516870551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3a14fb706aff4ef2becbd90d48ada7a6b3a0431bf4d073a173698fc6f916929
Date: Wed, 16 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752697193
