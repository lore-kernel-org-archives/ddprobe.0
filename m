Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28648279795
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751068794; cv=none; b=j5cvXsryMXtuvK/mKTwLUvqPD+Ep2cCHku3k15pu8kKtWvoHfCz9PSS28HEnyuUN7DrRNm5PzQoSk16/+fhPC0RrsrpI7kRqvZ/GeZVmPryM3yJ9hbrmOFfN63G4AkIJMQ+Q5TOiiocKewh19FUhkZXd558asNE2ScqOL4g/HJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751068794; c=relaxed/simple;
	bh=KMwEC/UT5d5lIR+u1OKwLXtJDpaiOx2AfYFSs9DFiH0=;
	h=To:Subject:From:Message-Id:Date; b=lQgUO4ycHoQBhiZRLM9uYoBKffVvyOBUNACM0/NghY43R0sVLvbCknGhGOXLzSh24xxDu3qhgqA6JdwTdcwK+dbcSOR7bWIcID0HodHYvPX8xCNLkM+eZ12Npj1YLqX+5nYnKq1Xh3Kub/5bDxs2b4fCkcJJLjsMsuFJoTWAc8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVeJX9BC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVeJX9BC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16C9C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751068793;
	bh=KMwEC/UT5d5lIR+u1OKwLXtJDpaiOx2AfYFSs9DFiH0=;
	h=To:Subject:From:Date:From;
	b=kVeJX9BCHQtjPOFcyqDm3pRPbUFdePdBwhSPXOuV5vmuHstAMYh0ErwLE5scVbVR8
	 22seQmNVg5SrWIBinIquKmidvJhp2lvI8SuZ9o7JIT6XUBY4I+ajKDgw9+5Unz6QDi
	 wgBpFt08pRbiX1uVWy3M7Cs2YEBNyGKVuwkI8CHjhp5pcs0jHFlBd5nQ9cZdFv3NzK
	 uVLWduaWIqa4MKcP4bdo1fX8Sgy3XvcnLdj5TNJuTPaMU/01fWIoauZxxKTc7KtD6g
	 uCbjLQtWAKwQL2SntoqE1DD452Bhgcgd+TpDUzPuMsLG0hAJvyF6XSUBjonTdV2/J6
	 6j614JfqzoDjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F952C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175106879357.2953.9220196613551534518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8c6dc4803a6fbea61b5e61f038730419f9b3199515a16cb0f937963c27b2d86
Date: Fri, 27 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751068793
