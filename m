Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CDF1FE463
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 16:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740243535; cv=none; b=VCrFf+Ue71w4Px6vYkukNWgHAB8O0Sj1rwP5nGCpqhCDYJwXbTzbVAU0BfPXjWR8U8zG1AyFdDiLvy9Yvb1/t3YhAkPjod0nQeLkPSQM4PzJPKzGGV8LkG2z74y7ojTEC4ICTRVK9wFT1DwqxF6ZchjEW+vDS5n5WP2GLmPyPz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740243535; c=relaxed/simple;
	bh=tejEWm/2boWGffhp29vfLMnDab6NYCmn7Zeq6Aw0K4g=;
	h=To:Subject:From:Message-Id:Date; b=SIuXpUlJ/t7p+7kjW/43UPUXZ7f+qjfcKFyNFbTANlTPgiuSAymweqnWak8tztvT/ZCaHYf6/HJE2yO0aXPgJajEczAXFD61uS4VfJm5nG4Ph4jNOUdJ+KQ4lPIK1LjxdCEp6e/sy2lr1S54smjWQj5QtfBlGWdVF4aNauhcDe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+NcLeRc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+NcLeRc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A3F7C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 16:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740243533;
	bh=tejEWm/2boWGffhp29vfLMnDab6NYCmn7Zeq6Aw0K4g=;
	h=To:Subject:From:Date:From;
	b=K+NcLeRctGKPoVfXLnjTwgN+o5NQTs8IUPubvxEilD6sSGsdxsfJyQgFWRa57tEZP
	 7Ox+hvqLI929FPwPPWK5Bs7wE4gwbiQB7v/RJ0w4MQUCkcaiSqCPeCAr0yooK8soPN
	 vc9zFnzrQBzM7Ljj7JkslNiQnEd0sMX/4ka2k3uWeBwmMp6RcFuT0BKgfo+oFzxbHc
	 kMFFyGSaWdijJa4OHGMEattgpWgDXqdhrzKLh7jwjoE4SqYeTgr3ZclWAf2Ff349gV
	 6omWYrkjjc0wI3QCDcMjei6q+FPArQRAJJnTtzc+TI7iAb4484WoPAMxNgio3NMpug
	 Nc/2SIa0CUYcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92521C021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 16:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174024353359.18269.16280780483738512700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d68bb730ad347b80a4c2f869c649a877d2e56e966c62d206517bc2f83ca012be
Date: Sat, 22 Feb 2025 16:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740243533
