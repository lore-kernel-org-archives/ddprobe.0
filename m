Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECDCF6FC3
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768864434; cv=none; b=cNgUcpvNTyb8tvcaZq3M3D7weUPp3HbRwTefkbMVnmJJ3Uk2PY+Kr34kp100+Q2iZRJnfPACrZujJxxU5ISqZLFZmJ4rYp3uOzFL5V1YdLWQpEAPCKEyyVCDOVUVcNrYNoIrb6HkfKg+JMo8mJ1qKniDfX8K+F9tgEpkFp0bjsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768864434; c=relaxed/simple;
	bh=NEzUI9OFB5A41xsI4OJVppM6HCs2QSz8J3AGRHvRJpw=;
	h=To:Subject:From:Message-Id:Date; b=rJIq/d4oPeedXGHkp5ulPWOx9fr2f98WXSwp5NP2GAZPYxTge0Yx/V/o9C0iQjZ66sxeYyDAR1OEzSfdLJPc7iDqREO0zUILzYHXmHmhxu7UPhqVUCYnF9Xrm4SYB9K/b07YVbkfJ4DWac95k+2oebUCm1tvUgos86VxjqV71W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhWfnjYM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhWfnjYM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33B7C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768864433;
	bh=NEzUI9OFB5A41xsI4OJVppM6HCs2QSz8J3AGRHvRJpw=;
	h=To:Subject:From:Date:From;
	b=FhWfnjYMtiHrIxaJHn7/i/+8a7euXaF30VUXjOUuyQxcFxir7wa5A/vIb/5KrJYSr
	 wYWKBw0md61rkz9YFAQzt6C4uvFQ9CiR8Z0zgRh8t0pUrqx8e4vzVBF5OdUNnzG8Nk
	 Mj0jHV/DU2IF9kYf+NmQCkQ2YOnBHa7XSqiGvfg+viA5kl61upA4otLmEGtQuWYSd9
	 7Ahogxkx2Hq1ozcCFv5hQ5rflN40LYN1vwi/PsQVxk+2OT4TEHdjMGLMP7ivpG8nCE
	 hU0fikUHgSXPUU4SScWr7k4oRapasXfRcW7fx3RKKprVbbU94rfreIUTQF0INNrGGL
	 8l+zU/gSs7mYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E1AD2ECEF
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176886443358.16106.4828751158673804571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ded4f7219a0d443ec7348eb35e18e0bf1a533565271fb4f58ddc1c163886767
Date: Mon, 19 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768864433
