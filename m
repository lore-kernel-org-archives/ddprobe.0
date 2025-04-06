Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515846FC3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743905394; cv=none; b=E0ozaiUW2Lio7g4ttZuy3AVmhyGK+ZN/3M/OmwE0SD7li9SKUpjJOc63HQL2G5h6fto6vTpxawVb+lLdSd/Ssawsdo+F4OtY9c+QuLLp9sHvoV6zPJLpdtCmpEoA+umgbsD1WdJjLy2ro2Q8v3gsfAqHIvYNxKjwofneCYnD7qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743905394; c=relaxed/simple;
	bh=k/mNKkFpm+5+ECLLlNRocu4FbvYmBSDwHjEuf1MIqgc=;
	h=To:Subject:From:Message-Id:Date; b=fyInDZmyxXh20kjPD2e7Kr9bJaCF/fD6+Kxomfzxyu05RGIdNonbk3xbJwwFovg31QxQzAVHZ7IFpJwgKc1WlyMM4JlXGEnvqNNy2fwdYO7IPaNnoSUlHKr9K1UXZmIEWIvEoVpOE7DIm+KD8igeu2W8upsL1ior2mvxrvNpgCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrFzXoSz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrFzXoSz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4766C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743905393;
	bh=k/mNKkFpm+5+ECLLlNRocu4FbvYmBSDwHjEuf1MIqgc=;
	h=To:Subject:From:Date:From;
	b=UrFzXoSzDIUwJZyUH4KGYYzLHCGd1vtrFEZIXmv+HjbIJOouOK+VYyq1cGgLZq5mR
	 3Px+aR7RVzSlBxaffwL1yeetThoO3zV+FYo4gFmYbyeCTCQqTZLXW/XokSSVy+xxRz
	 /xLFH0ioiQCSj/fLFhMGxV3Z3RLcK5SrMpHgDzf2KD1BOANlXMmTtFfzCH+ohNS6fA
	 IVJM3Sx0N2JbRkKhRm8vghulKCJbxrp+P0IWi7EtD4P5wZsV8syUaFyFza1x0DT5UR
	 wIFFmW6Jv3bGCzFM3rC4eeJ4PtL+OSoCYF4/ri0GVwi3VkE5nca+4oY4qh1l7UI1ly
	 yet+QdLPrzgWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4F7C36010
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174390539364.32139.705016858338745462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1adec7cd323f577a919da013ac2427a21cbbcee90e392b2d2eeef974d5b99bf
Date: Sun, 06 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743905393
