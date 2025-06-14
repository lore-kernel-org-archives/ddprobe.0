Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250E02E11CB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749918594; cv=none; b=u3ZQ0tPhUoCQKTIBjhEc+kWjzWQMILM/mkbbOAV19HsJtoSUVthnHVF0ttNMkd86/f2lXdZXvSzk9imA3suLr37M4MhPCyZgywhGrR0LdDc9zA7l9BcimSqxkeQYCKQPc+fZnvZSuPydbnftoyapfHSx7JuviH0mLqZfkKggfd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749918594; c=relaxed/simple;
	bh=M6CCqy46a/DLEz19L2i4jvy/lPXdU8Z8P4+mLTJLs/Y=;
	h=To:Subject:From:Message-Id:Date; b=XGdq+IehhLPrE5sM0WXg3oGFty+R5luk+Ir9oo6FB+Eac/BQCdV3KsyoWSkUDVM1GWiltCLJB3z1U7cv7KYEDDpzPM2roj0IQR+Ychjv/OPPTMgdbEazSdcT9XgOno2F8fnfPBtkAIihqhOtqmTLvQjka/twE7b8vE9sUGlgvrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxrfVLgs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxrfVLgs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B73C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749918593;
	bh=M6CCqy46a/DLEz19L2i4jvy/lPXdU8Z8P4+mLTJLs/Y=;
	h=To:Subject:From:Date:From;
	b=TxrfVLgs3u6HZBFKZYjjhd3QC4mIk9HNK3nNHrEcMcyG6HVPZ4w0fkUHUAA+UBYVY
	 5Agaa0U/0Aa7DBMowfBaHM+qWbtYqwxr1PFCGRcHiQK5S7Ln6BWRex87Hy8l9TXtbt
	 1rthr2f2LlFzsG5St2zldvArluMq4IW6DOlc7jlO9etA0g9r6Cn1nm2eTlZKwj2LVp
	 vuOvbH0kLA6SYlNw8ZVqyrb3TUVgNTSJqmCO5bMAbYd5mBXdutER6cLCeQAp3C7vN7
	 C0XO1PSP46fXWTcuNkI6qwW97rHvsP/RU594Z1wzrbD0c6khFMePrmmbqr3vosXF/G
	 0z9dCrfHjB8Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D4AC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174991859357.13634.8800172930659297219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5125178314a8179e29114626a714dcdae2b237ba380332f849f9b2564f78d33
Date: Sat, 14 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749918593
