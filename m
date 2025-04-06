Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466CC537F8
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743978595; cv=none; b=uMX2Kcv9GjWwPRHHT79pYQwMdA9NYIvVjTswFbr02P3wkgHfbFfZv5fVDE25PzPsD90jYSkZ6R8TT2tWLWBF5Ohr8AikRI1Tgwui3ZNG0ZBIT6+HMpP5dSCwOX6Vim/8y9hLCrxfwfm+lH4wQw3OaUfXIf9gkKAoVOE4tu+5xFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743978595; c=relaxed/simple;
	bh=y1baphTrOVcNpYHAYlgzi1VXq/Yp/r7n09Athc8XesI=;
	h=To:Subject:From:Message-Id:Date; b=i4VeORgtOL3S9fCKoewdFb2FgFOldAu+0fJGFkwC9n6atr2DomXj73mTrIdBgajta6GaPzSAaV9D5tmUsA/IECRO2fytormDzEG+IUCPIJSIc0R33/4i513IDCHmHRPPIVtH0KK1SCtR1wxGzEd0KkiWrFm9jsMCKUPmHTmn6X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuI/EYPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuI/EYPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBE9C4CEEA
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743978593;
	bh=y1baphTrOVcNpYHAYlgzi1VXq/Yp/r7n09Athc8XesI=;
	h=To:Subject:From:Date:From;
	b=DuI/EYPbR3r09BpDQC0C+KiIrClmzzOgmgh6Ky72hBynRT82ZJ6o6vFHnSTJ8w47z
	 IEdhSO+w8Erz15BRwTikyV8m1UW/9OyqbIGmSP/yTOpfeVYf7n2T/dayTIZ6l5ZslC
	 /ENUA9N+pU53zELQ9lTJhaUHRKEQqaUJkI7qGDBoV32MDlO0RGRtS+0ARlJqA7PN5l
	 7vj8L3IIO/QeZoFUp5pmTTq1uv1bmAOhbdNVZN/chu2qy7ZCs30fz3QkGhVdy0YizQ
	 mJgW/ArNg1bvi6WzqYnFr44zth7MpwcfLXfg6q7zkLCYqOe62YRzn7gRLbHv56JCCq
	 ELswM7JQLw0oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A3EC36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174397859363.25793.88459022866071832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23e7ab8dae35b7df69fb16369d08dd89c4e6b03e40b00dd8ce330820ce8cc012
Date: Sun, 06 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743978593
