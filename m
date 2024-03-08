Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DDA53373
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709934497; cv=none; b=VhTrj5NZeIICLtcTQxBneEJmyJaXvelXVgsp3Dyt8rGekaoYo4xxD4tum2z5aHu0AdTPMU85vZ9hcGtSBt213fZusxric0VgDR2mrT+LI0wnJHjG0iJN5aNY+YVjZAbvfuGe7BI3HFcrGMPsAdL2SPe11KWSr1UTxCpPSxqB1VA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709934497; c=relaxed/simple;
	bh=ay63s4lYUQgKuz1cZsf6u4tsdotaN+4FimzIGDHpyY0=;
	h=To:Subject:From:Message-Id:Date; b=g5rkwGuCGhplq/5bvkAU3BpcZHm7egp8D13rstEqqhxWxI8dNpIiTR0vYr9Biy7DP+t1nsYCbyHOnlUr4i7kZvmY7eaHrdfWrBmdxp8v7Hq+kldISEWIbiqJKpGQnEHskyJ3YjA8ic8Cir1JTk/VRLRab2LRhlEN+K9dAFkrPHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEPrrmAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEPrrmAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9472CC433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709934496;
	bh=ay63s4lYUQgKuz1cZsf6u4tsdotaN+4FimzIGDHpyY0=;
	h=To:Subject:From:Date:From;
	b=GEPrrmAOEszkFxmqbF8eAUZMYnxR4GUbozTOUPF2d7XvuLQ0UJbAGguHhzmmPY/jD
	 xP0LsLFjjZmF+oG9pT90rZYnIDDH8QHDhKtGEIaI3pTzvYv744xUyEfkabykP1skdl
	 lVoidrPHrortVjR58vAsKhhw+F0dW0bQXi3MVzvSuTEHiYAZbTl1cbZUHDwBJtd3V4
	 /8JOnhPiYbOeGq1HCBvarf+YcG0PIVjhqTIENhwOVzUqf+gHZMdntHPAI3V14Pm3H9
	 TSx9/3Lw1JraOp9PBxXttKSdzhlbZGoA4mn4cBl3Bau0LBsitCQ+dyqvc3i+M4Pakf
	 54ciP8Ysqt81g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B93DC5475B
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170993449643.8881.14605652237180527772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a73e8657dac7e4ef1c25c46a8dad6a2dfcc617e512e657184ddce681abceb5b7
Date: Fri, 08 Mar 2024 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709934496
