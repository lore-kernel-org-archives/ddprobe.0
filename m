Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B60E1F606
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706344697; cv=none; b=msUDoulb3KQuP31ztGUN5UFspA05opCeOCblG8+pNJfT108NZURJHXARyauRIUoJjvDCYOKlnxp7mEj5FhwDRGjSkBc0a5nEc+7Y7LnbamI/LbH3Ha0/s+KPnYmNQ9BdiebB24nLSm3B4hs7oW0Fi1kAUPD4Lw+T+G1m4zf1G4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706344697; c=relaxed/simple;
	bh=dwefKGFBnT0KZ5CEfzLzvpIox5Ct2d2VXRDMT9bvEYo=;
	h=To:Subject:From:Message-Id:Date; b=hZmyuds0C7ZiX0q15rTjsp8KiCSHaWO8XifRXLBdEMmO8s48jB9BmfSZnaWQ9RjdISMpuC+FJwTUSLYlpbTfjv7HjJpitS9N7DOTzqZyFIKcwMXJThr15PS8Unpa8ccu3ADSL2tgyc33UvxOOW3t2Wqw30wwjpGfNBkvDjARlQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ns4ORRbf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ns4ORRbf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76DE9C433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706344696;
	bh=dwefKGFBnT0KZ5CEfzLzvpIox5Ct2d2VXRDMT9bvEYo=;
	h=To:Subject:From:Date:From;
	b=ns4ORRbffnNaDpYMeNSfLSq0Gt0VcRMW2B4xLDuOgpojaPfD6YJmkIJRK3gZksArx
	 PC1/7+mzz1bGUL1jIRzWaQoBhE44WU97keA5IqChmgmGhILYYD/WML0PHt/JPGlOpQ
	 3uO8gzVFeaqLh7wz2LLSEhZsdAOzvR9PjOruSnGxy+aJVjIOCpOuVgjogpioWXusxI
	 jCbNZfUkIVyPXm8nGvLhtkenZqnrq3WKFNlMUipbShX5xB1wwvkCQHmKJXN6ZpUE8a
	 FoFwD/V1P294aGwQ0ixphxFzalXu6P/GefocpMCyo5O1kuRupck3dxu+6O6Bq/ydlm
	 bMrh6b2M1HKJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B800C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170634469636.23003.8478478409554627371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf388b959263db02098a1ffc07379aa2a02c702a04f557e955350e22b30d29e8
Date: Sat, 27 Jan 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706344696
