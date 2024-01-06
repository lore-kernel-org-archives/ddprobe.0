Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B503C15
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cs7kRy2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9114AC433C8
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704524296;
	bh=VJUP8Gfq2K49aM4xR+5hl7lSLobelW5XFOvTo+Qd4Ds=;
	h=To:Subject:From:Date:From;
	b=Cs7kRy2y9IfAfi+1Z8ZyRVMCgtfAKqsoy8Jh3FVdObgM0u0Xi0RkoFA4E/a5dmpzB
	 Owd0q/lYtYbvFbQ40Q0qs4P+qnBNpYy0BmSt4v/lZ5mIfnVCL2kGnBPII3E19qyOYW
	 mdQJ1acBJxfh3pAlsdmypnhK0ihP2Afv8oj9agIR8KDQ2NtDqC9443tpJuABpEYztl
	 TPIPmf2p5IQpXleWkS0MyDcUYXRxwJ5dY2sxAVKBx1jNnZCH/DIsZXqEDKqVU0Tuqc
	 SJCDpye9n5q31o2jYxsPTLmfvVV9hppKpa0B50iD5+b7ECk8pEyttTl6n0o7waMPD8
	 IREe0kEpLeivA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7988AC46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170452429648.554.10258182501197085720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6261803cbed02479ad95698b00ed474478818c03f2f8bb61e34e8ce19b87c61a
Date: Sat, 06 Jan 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704524296
