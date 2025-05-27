Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A1A1E32B7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748376594; cv=none; b=CYSnyk1z3L/rpnOiXpSHQvOiNi+iD6Ifu14cAyIgSnKfuHbq9MddnKWRh3j1cRt/VRbe884oOFbBM4S0znu0JmMpHGNMRBfdkNfNfts68DOL3WBwBhTMmsHDml0R9oYqa9IT/+AjhCMkGswj1x3VfzRBFwG1/ReFT/zv3xOHm3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748376594; c=relaxed/simple;
	bh=5+pdczLKSYsuj3bqVhJFAq0JkDhlxHMRWBf0pCbfIjg=;
	h=To:Subject:From:Message-Id:Date; b=ka5Fw+Kb19Lw7ca/pSJBW0cc6XR/TY7OwouaBZG0fRYzgFF9EBh6AueqBw8oYH1pNpSXB94DuMrg0ZDPyahG4Sf8MOLAWEtu5WznzGwXD0jN6Ph/i6iRZFB0u9LXGbynZez3YaslqL9qUqvsBIWi6rwmLpPN06Be6OWBeRKmFY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtPvzU/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtPvzU/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B26C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748376593;
	bh=5+pdczLKSYsuj3bqVhJFAq0JkDhlxHMRWBf0pCbfIjg=;
	h=To:Subject:From:Date:From;
	b=LtPvzU/1ZYxt1f/30lTOxjuFTb0h9SOpbJ3mE13bwb4C0cmAHH2WiS/g7djSeS2ua
	 bJyWhNAcsjViGdihvQ4SPtrp6Jd5BNuWvuxG5Cluuq3A8hdJqkTLLys0TFbIq+Psyb
	 hoU9mRUQl1sdP6hV88CSI63x2m34p4+iIelSdr8ZtAPe+mH9VMk1itQHtIPs76JEQv
	 Ew1VOp1bbBUaQOEbfrVyqBbfDrLeTFQ2hIaoPIf1h3/fkR7Bfzhl7Do+wPnO3wACOV
	 z0s/eraf3tGdI8jyuh4yX+SZCWW6uCdcqN6MBxetesqbUxyIfbsIY4yibBdM+r0QVN
	 hSC4EH0WIJ8Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F19DC54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174837659357.19223.1944825267952841994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2350b0c8ab4a947efe29afdfb30488518bd8c68341b77686cfaf67900d983469
Date: Tue, 27 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748376593
