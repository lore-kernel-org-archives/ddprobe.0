Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283892701DF
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754693394; cv=none; b=VWTgIpKXJZmgW9QGSe6ea3nMAdR9xEIVAAVepL5TfjwQM9h3enUtdlqPXYTY3J6LaVzxD6TqJ6dT6eAWD9t21Jpyn+DwR0Hhzn1v2vzwkglgkO3pRNyREwV9YeuosttU9JecsW4qOSC/2LFpnciRvrB+jllQErdKDyV+zOyQ3qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754693394; c=relaxed/simple;
	bh=Z9xOa31YRah2bKqWZoeWnPsrbdGx4Ug00afOO1yrt3c=;
	h=To:Subject:From:Message-Id:Date; b=d9fikH4EKnbmyqjc5WvgKFwYmv6g3nnQ/ZBejekojIRTqDQgeo+Zht9CUkh5VwD7UlJUEQntMm24axx/9AwpSpeNNp/cTT4PtJXQUqT9YPa2sbi4MdA4Wa4PJ0U2JmKRthhHk6b5HhqrQLjhMhCx7Fbjt3PvNHTVsN8Tkxh4GQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJxGUh6X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJxGUh6X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23C1C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754693393;
	bh=Z9xOa31YRah2bKqWZoeWnPsrbdGx4Ug00afOO1yrt3c=;
	h=To:Subject:From:Date:From;
	b=KJxGUh6XZr6ZXNpO/6CmKFuxDCTe02nbh7ZLdyU+q5ROT2RIR7tXz7xt3E10fcquG
	 J9e0VJLRJpWNAZy7brCE3iuEib0qmAnKTSWWBu6/mVonzri+uwkKcAaHC6hbqb0ATm
	 t2r0/E2slTTOhqix7+pp4UazOB2dGVj4QqMGLVZmdewYppT6amDX4wMlrAMPv1aqD/
	 sjNgyl4krydLq7fCs2secJxWAd/fhO4tLEGeb0FDda7E1L8dmFG+J1E5w0FYCeZMGA
	 K69Vvx3QZ0DAcX9swnfQB/WJwy9XdFiknFn7xNoQ5bjaFT3VTBsabxbSa8sSI1/3K1
	 /hu5uA4UHWOIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9222BC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175469339357.5804.16717915621178484458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4511ee029b7ce58ec4fa5a156f7d157a191107569cafab890f90cac400f8005f
Date: Fri, 08 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754693393
