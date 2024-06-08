Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC87FC19
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 22:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717887443; cv=none; b=nYV9VYVre9Opt7889S9lK8K9XDPodHRPaYxR1xqwucP0167k6Ygv6dR5pb3Zk/t4xaS/O3WnGyh0aoZZ3H/PywFU2PHJfa3xOfk/mOdtmbC4dldeCKsfVPMaZsBjLmhGOry53E0hH6RSVZkOmyqsbs7zDLiAdkB78Drj+OVXs0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717887443; c=relaxed/simple;
	bh=3XuwpNPg3U7+6k/WP/t9TX6QAwUFnuEvSocJUJb2+P8=;
	h=To:Subject:From:Message-Id:Date; b=fI/mx+V5bXZow7pIXLusx7NP9x27/kswHlxZkkS/+IxCH/ZW7ZApv70ilx6Oolgc/p8OQOvFMlkgCNIrecBV3QGFYe6BZOrZjLMtuOuZskTsOxJdC1a6ZO6Blj30Y0Zmf2HffxwlxkE35dyKebf7p3sPU9nSF+HxT2YzdtHvfSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kB9R+8tl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kB9R+8tl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D438AC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 22:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717887442;
	bh=3XuwpNPg3U7+6k/WP/t9TX6QAwUFnuEvSocJUJb2+P8=;
	h=To:Subject:From:Date:From;
	b=kB9R+8tlm+FZet3LnGxv0oym6fsfFdG16Y2cVrd8wg0OJ8g3hAfEnsIFR/fLSdelz
	 vd9dyunsCSyHY5kpYtLldDXOIkKoKh3ODKdv+ec9VRuaawlG2THzFiy5xXKOJucl/U
	 avwKrVXe9x2jSSTDm+8R23LZ6AToIrUm+Ei/nnQ41WdGVVF45Zg/Q6GLBF6DGFo7EW
	 PBfP7076XzK67fAVTimAFrtc+iBFyR3YU4ayyCoX4pH1S6u4UXOInMJJfLDoVhv5KU
	 OKElas7jUPbxVbhaSZWhBvjYFX9GsKe9k0l8PD0egzil/zTsgoKD9EhVAIyZHyH684
	 FP2PDUGZHmNJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED65C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 22:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171788744276.22680.11166141489818527668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8db8f610c5e5d785fe889c27c04fcee77a9605d2791bdc0f3b6cefb38335b250
Date: Sat, 08 Jun 2024 22:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717887442
