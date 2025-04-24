Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6C11CD1F
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745462994; cv=none; b=t0qf8IHzP392WOgfB41fhNQ9vaO4kIew49mKUSp3j47LjblIV1ELWnRrFX/Nzlg3vUd3LjKvUYDVAMpHasAe6HNvkY3rl9P3Uku1LOu3oAnj4PD9dqSxNrDqXOxSLmZG2GbHWtwrQqXMZVFgcahz/SN5a8c2DXsfNo8zPzGwAKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745462994; c=relaxed/simple;
	bh=Ufd+Wn4aXFlPAT9iWB9wFhy+9x21hrY8KpPazkYFrMc=;
	h=To:Subject:From:Message-Id:Date; b=FkrpEGoHnS2HX4qwzqMbWNJOfr40z810qR/Yu8BNWWfZSLIPCWg4uMNJBfuWLNBwcFZJ/CqhhS5AWIArVE+k8hpCGSFSR1EzJwyyw6Rok8yH82kHHzjTgVQrgU/HLmeO3ppQ9mdNN9eFLW87xWRG2HTvmgoC59qVMtpBTawg4aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnT/+b3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnT/+b3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F86AC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745462993;
	bh=Ufd+Wn4aXFlPAT9iWB9wFhy+9x21hrY8KpPazkYFrMc=;
	h=To:Subject:From:Date:From;
	b=ZnT/+b3PlV1CDhYbpdqXse+a2NWFLelw1uirvYxbZpsoY+gUGcjp++i4M8WRuwi31
	 9H8hFUMZw3tzTSm9U5ApabA+Wpyu3HzgS5DzDydHgo+zYlaVJyrc2LgltNpWaQq1qi
	 0CT/HiJN7yZp+ad6WTqrj0pRxvsFLtqBzz0qhPCF+cR8dIgUhaBHdTJoQFpHO2fkWc
	 pWWRfR3X+ftj/gaPjPOpTBTJSq+50b6G32jQm08f4/243brZmBDAVHu84NZK1IciXJ
	 OswCYwlozxnKnuQamK6ktpG6jdYCOQyAVxEi6Uh9u1uTbs5Zpcf5scZoqewpCrbBdH
	 ZETVXlVibw0cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7FAC369CB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174546299357.3203.10984244529360999116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ef4e605cd0f031010cd9fb01d70ab89efded583fc0673d532383e61b674273c
Date: Thu, 24 Apr 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745462993
