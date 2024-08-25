Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BE0EAD2
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724600754; cv=none; b=Sy0n2BWGgKUYJ9TL3mTcs2P2YU+EqH/qLaQK2eMELLrVfl6+NxFD9h72fZzcLhrUbRfX1LC9ey0DKdeyv+T/omiByCrTtUrV7jcwqGKd40cPy5dEhxF0vGOGvEwYEyXyoj4NS2U+to22CndmuvwBq5yHPd0KecV2+v5ztM4D9X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724600754; c=relaxed/simple;
	bh=h4R/FBFq1duf2LR38B98VmM088dLkPyy0SOlSArRG+U=;
	h=To:Subject:From:Message-Id:Date; b=UWYrf0pvoXtKJJu2Bf7DzShcf7A/5E0AbR0/5HToc9qE/IVX/A3F8Ii/E0BoZ70d8CWNog1Ebe0Y5jm9HL8sr2ONjLUOQFfI9JwS3ZnZKD6OYshleXhgjrmR+a53NQz14FOXEWwmqJLq4vKrgQc56k1jzLfsfEPASu4EnjbsYF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHGSME3i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHGSME3i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0137C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724600753;
	bh=h4R/FBFq1duf2LR38B98VmM088dLkPyy0SOlSArRG+U=;
	h=To:Subject:From:Date:From;
	b=rHGSME3iBW49C7WfAt+dXFMz/Q8zZUj8InxMd629zBkYoeOJD1pBivHv/tkQU8+lU
	 07+reD1DywJ3ya9YHyZYvtW1w+qx99REmzjsFm6K9w7xGa8n8sPKXKJwn6z9DQXvlr
	 i3SfirEq8wHQD14aTpOk+ksKDoxLM8+GUSbWyAO6EGUMe7Gr4aoPG4chb36A2WQxK5
	 hHTS5jUMjh0RgI1ax4hA0ID9Ylncvh2J1NVfzu2nDxHvBYUHdJkF2iZPT8a4La0W+2
	 3WP9J4MsLOB+wmhBtZofLFkJ2IKwuyXqTrgHFgYzo0RMm/4P/52PQY3XZ/3GJwsTCw
	 F4uYh68kC2RkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C468C5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172460075360.7938.6078092708822813724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d21ea2a3207d752295362c061ac0a98048fa867764cffdd4b19830dfd330aa
Date: Sun, 25 Aug 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724600753
