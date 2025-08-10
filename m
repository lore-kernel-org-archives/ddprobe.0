Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200C91D5CE8
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754869194; cv=none; b=HSFxO1No16OiFOA2iTXioktgC/TKAFJoZ/Y30Ko1eC/GuCoyuJNAGRPuF8MiHBfsc7eeF3jWfOUUewcxbsMTXkfcfYFaBMlkjZP8lsIl27cvnwxw02PuxEa+y7MKO7EoNSsQHBzF0MaJ2c/ZiTHKOhWk4M0YNFEEBRMgRSmSEnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754869194; c=relaxed/simple;
	bh=p/hTHzldh/r8N1aI2N1uz+zJ82gQ/11Mu8fzUYfmPoc=;
	h=To:Subject:From:Message-Id:Date; b=oKpGI9U5g2LSAe68Hd9W+rY2Dhz3YW4YE9dHLzV9gFKOxPe/P1Wifdgnvm/BMZqTI2KV7i0qUleuxOHZFb2YFDA7aJtIrQwHJBuputrY0vi+wodnPN4Mo+AsqDDTOakeZac6xOZQERlloii3TIWdWN7fFtjqSp9F2FTNMj/ogec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2mPQPp2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2mPQPp2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD90C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754869193;
	bh=p/hTHzldh/r8N1aI2N1uz+zJ82gQ/11Mu8fzUYfmPoc=;
	h=To:Subject:From:Date:From;
	b=s2mPQPp2JnkzkqWiWHUWm1LNFEvfr8PI2IvotNxbRp45o9DPMn1lUxBrxVFOu28Ta
	 0egDzaPMAbODw3fy12zVdJGNNCF6jnuXOaSWgI92NmDqF2u9Q8jrAbtPIUJyPef5MQ
	 ERrvPqeHrei0G7CIvJDIYWrv4ecixvSYHTfygPbzBamUOQy4/EkAGtiECLrR779Jxb
	 XZ3milRdOeeYryowYX5gSG+fGTUMGOKAJmoZres0tmOMY6205E74D2RBI+eNGEOGZR
	 El2R9N9UczWdSD2xxMcbUPj6q+V/2VF6oDkLLSa4tmrv/pB+1I+RrCwqMTcomhrV8y
	 eAthvVZVc0z6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7B7C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175486919357.32334.6518418272837369855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 169eada5ab8047803d7faa659bad4158eea3256a0b97ed183f9674d49600efcc
Date: Sun, 10 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754869193
