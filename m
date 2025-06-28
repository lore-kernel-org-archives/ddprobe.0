Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CFF19755B
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751120394; cv=none; b=ORd2R6p3eTCVS8WLSVGKrKSbYoew1srV4OFWsn1oBNG9CYlNEJ1AGatlYXi6IOZHh5YzCoF2u4A7z+OvRXaNI1834GDnWHSOH1L+kbgJ8Ymk5owWwc1444NPjJMCv+EPrlqOv/wG3QsDd0pOTYmTSAB/bifdqwsHSgX3LPZyv5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751120394; c=relaxed/simple;
	bh=BWnNWm/mbsOnXMaX0/y816JCbjFcfSLwoYkiKrHWfHI=;
	h=To:Subject:From:Message-Id:Date; b=rUy1A5V7JL/FUxYyH7H/3LNeA90YepylNapVEHRM3meaNACNeMg+nu5h5lY/Y+wI7haDqYk1vMTve64J2u3banTbS13zBCh8tuuURA6RKwbDKIjKZ3i2Wf1+QlE03rCCH/tWyTVRMgBfmzxvlMXOXZr56+W+rMZe8cQGh4OiCls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMcUuTc4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMcUuTc4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88C2C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751120393;
	bh=BWnNWm/mbsOnXMaX0/y816JCbjFcfSLwoYkiKrHWfHI=;
	h=To:Subject:From:Date:From;
	b=XMcUuTc4igFTe98MWGkFJlQxn7VYhyGb/B41+CGfrQ2xtBL3ByIncLarND4tJo3nb
	 7YepJ8QEZKmTYaaORHvioiPpypl+3bpcvlJwtah9JyX9UOuxWjKAh9HVP4cKSphk+Y
	 R/6tTKRzcU1ugbg9PsJJUG6xilO4oXN/gMwMRUsW6P6lsR/oiAT6sKyLBV9yI26Ghw
	 765kqdOWKLFAqCXRb+ngqADqyWT217/2h5Smdj2+XgpM1DAFAVZ5/r0LIP1/M6RUrW
	 Yh1XAnEGqjtu0orX6ggD7hynkSyoP9Wyo59PL89/jZ0fDeRODPkYjMWthuo441iio2
	 H9vn3XpMJV/KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966D9C7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175112039358.10389.4612930471898286018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 941e2f36c3a6fb5e28b47a78dde3a66b10fc6f2579a974c64d57da024f7cd1bc
Date: Sat, 28 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751120393
