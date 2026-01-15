Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1A0B67E
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768449234; cv=none; b=ZVTGqv4Cua7enxqeAoM48zz3Pjd3xHl6Ba8NEiNIc/Jl67s2N7arVuN/Mxh4dthE+i1kgyQ0cDvE4nmW6XP48lN0u93jtTsudZ6X33M4VLIDv8zqhPfvANBho63kC8dqIPSSbQGlRGk9dL6sqLHBfy9vYf1nid0fppCNt7GXfsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768449234; c=relaxed/simple;
	bh=yyzlP8o7RFgriVJK1TiXX+7IBPlSDr4GdvZLRESBKQk=;
	h=To:Subject:From:Message-Id:Date; b=C8Ga1keJ0uU84j5d+u3A6L3UZ/+KxmeXwfeDkKFcAkyGdHrNaFiEJouakqgkT1dx1yKteWdYVWfzSYmbL+06/eRgtl2jwCiM4WygJUG2SgFt3hqQRpgaUxIh1Ehm4dED8eZrSz6Hn3r2VFHSjyE1c1WIUWAI3GF2cV8UcVN4nS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKrrqjkE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKrrqjkE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F315C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768449233;
	bh=yyzlP8o7RFgriVJK1TiXX+7IBPlSDr4GdvZLRESBKQk=;
	h=To:Subject:From:Date:From;
	b=EKrrqjkEcF5F/EvJ8G483PtHSOzYsoK6UTUXCM27BrF13X9UrcI2GkAfD4vLfgesc
	 HjtGVpBCD+fhNj4X3Lfufp6P5VyPQXMSHsCbfVXAnKKQhQ/u4UKVQZPwK5ipskWdf4
	 l6f13W3MkwYIl1Xg5ka+7y+yC3MnjelSmrroTx/Wyetjhy83IJG1CKwF1COpEohUuD
	 ilCbjBLTDKkdkJkwWZ0KrtMCvJlI5AEQal0VdBjCsZEt6AX1XPaVmCnQs9qrYBs5Hx
	 mrIAusntUW+pWPMsekJAnesPr67s+bNabvmq/V3DmB0JPGuXIxsPZZZyk0fy7XvXZp
	 DG46ORKqcnrcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F283D3CCAD
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176844923357.304.10633178781619696934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b74704a3eeb078b62b549fdc6c37d91a37052ddeaa4629515851b5335091241
Date: Thu, 15 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768449233
