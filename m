Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA53136A
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747504795; cv=none; b=iZD7GLMqptY6JdzwWcOaPv5DwvvP1K7heKUo4BWDDi73iYsvVa+3kJPWmNfUEPMRCXJ8eoK1bLNsnh82GfIDSLX3LKENj6Osm1gcVWDG1YtZobk9k8BnTy6BRVKgGIrRDIlEablzY4yHlNhWhMG7Q8OIANyOO9+Lhcpwnun9rbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747504795; c=relaxed/simple;
	bh=4Vg2YAaT/GpuEGPZDtX5w1QsAa3gmwDqDzuzQ0yLoK4=;
	h=To:Subject:From:Message-Id:Date; b=ey1kwF+2bEpNAC/FGi6UwgBAPF/jb1FhFwdVCMPIyWnKD2Obqc8wYUVf3p3HFSWu48/URfIEaqGyvYtA9DVoJnWmCgyCZK6ZAjqNB5gWsPJggkilaO81WSfCR9oRkKN89P7oZ9WUr2A1M8g1yb41hFPGHdykolXnarEaLYqyW5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ge674Kzm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ge674Kzm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DC0C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747504793;
	bh=4Vg2YAaT/GpuEGPZDtX5w1QsAa3gmwDqDzuzQ0yLoK4=;
	h=To:Subject:From:Date:From;
	b=Ge674KzmU7B63VsOHETLpER12eGJ08oMfk2XDAJFISAna60t0arkbbz5oW+pSfUpl
	 P4euI9urCBbNhZ6Aojs255YNpZrRwm6sJNi+okW7+wKq4Xeqb/5n8BiwRYedV0VmXA
	 pg7+KoYwwFQ8e/tmHLNfy5oS+9IwqBO7GKiSPZFVSghX/87qmMiK24sU6BlDU+sqYk
	 sh3xJm2B+80hT5dp+wWkHS4cRdV0COaJqRy9NGVqKhNmN4RC64GO0IrJys6AN6ReQl
	 SDrY2HPfpil6uiJG5pifYI8F1OyuhxzSu0Kun2PUDyZW/R+pgW93qSjiq2fvwt0hUq
	 MMjHRmQVB+vtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F026C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174750479357.28452.489851298396952797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6400d78fc99166257f894f485fa565f3b8c19be2a4dcdca4b5d01cf44839132b
Date: Sat, 17 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747504793
