Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EEC135A63
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737972354; cv=none; b=g4Nq1RqPYb6VoQ+LaIwketsuGfmymtmydRFBv43FgPtCG92r/INff4P8GhdY9riOBO8raJp+F4qhoneRMlX/40qb/AqcNSzATHdOviw6QR/AXDlmdrtEgKvqvXkvK88d47A+DsF6K+9WqLpPMU5FM4N+jE1mRzHwXnTv4Da7VRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737972354; c=relaxed/simple;
	bh=UOyCO5ANXaLaT0+jP7r1mQbrkdODrWR3PbW6xOTbdmg=;
	h=To:Subject:From:Message-Id:Date; b=ZGFTwG+vivQmxHFgoADeRaWBYIB1Mi/TRWVme3L6ymZp1XuYKMRY51vlR9At1QGebICVHm52acbOAkz/L5hgm4qfRccwX9Hp62zYyYQqKfjkAgE73Lahm5wJvQuZOTj2Z1aIklOcLo34iR/swXhgY38OArs5dkb9ll3Iaa1rWjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2Ce5hrc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2Ce5hrc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D96C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737972353;
	bh=UOyCO5ANXaLaT0+jP7r1mQbrkdODrWR3PbW6xOTbdmg=;
	h=To:Subject:From:Date:From;
	b=O2Ce5hrcsEc8nXbzQCgjnwKj1aJLdpdahNGeMhJlnROIqZ0NL96iAIPfnafI6sN+v
	 FRP7RnXKFYv/4r7wQHIaixSGSQS8hMfI7d5nyqm6SyXQMiB9Okdb3W/OMAeVK7A0Pu
	 3FefnxD1Khj00vxJpNcO1qGd+4fSCOITQGV3SLCo1QXjWP3Cc+ZQODtMOzXs+9cA0U
	 ABxTPnEcT+CSOrZ1WHN5FVd0fwUdYMThpI3EdsUDI73pUXQBoKqx3QNYsc/13rLRoN
	 mY+0sS0OWj6ulCHCM2vhAQ3OjwyOkiJzv3Vr+9AP5263QtqCsqwwDaL9kjjbSW3BrU
	 nUUMS4yuKlQtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980EAC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173797235361.18386.16112426893352692788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 289febd3b6acded560e4fa1614c2fbcd99743160c1eb743f6bf674975e09a07e
Date: Mon, 27 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737972353
