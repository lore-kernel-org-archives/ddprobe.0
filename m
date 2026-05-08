Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193AA2FE566
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778276854; cv=none; b=QIc2ABIsHbucmfBbV/jmgKTamDV5UTAPIjd7EGXqFAE9Lk9zu4nejnf3Xa/g7dZoGH4xJmyVOPDaHIt/omilWVOTsDL/2OoEejrHp26vPZ0MIjxXjoj+KSYGCWRSCrS9/QhQStxqwlY3wtQY+2YsBb/fYr+yuSePvhbrmXayVGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778276854; c=relaxed/simple;
	bh=0yiwhZuspmPH3Tl6HNWsZWjmE1H8EiIZRFnR70nqV7E=;
	h=To:Subject:From:Message-Id:Date; b=Qk5m9jb60yLG5s6g2yqFqxQnz+fSMFhonruFTJTFvGmD5boB3Xa3xgvQa6dJa/9t5/XtJ+TvSm99fcsdQjJKHvN3HqFaAGBXDv47H3Yw9JKMFB8aC8i7rw3phnm1z20eT8yVwkGecX/352d+qTjb+sFzsMwhGJkf59kkKA8NysE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJKEPgQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJKEPgQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98ECC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778276853;
	bh=0yiwhZuspmPH3Tl6HNWsZWjmE1H8EiIZRFnR70nqV7E=;
	h=To:Subject:From:Date:From;
	b=XJKEPgQCoxdNR8rDGGZurf5Xy4vxmw3inmhG4PpjatXS9nICHUaH4FtN6jgyx1jkD
	 OzSsuX7NMijjTeA4/UJp6uq3iYYukpFqca7MH2OhoIFa5iC7t2Z+OK5ncB9U7nfP84
	 uXpv8WOfnyNcTEQTVsNM9vii6H2U013v6L1J2B2rCJh3mBkYBaS8dva7ajozfUw/Wb
	 A1CDkbeSnCm2jBC9eYhxXsz8zB35cxI0Z4RmYP17jJISSJxwE8skooMmAhSfI64tMl
	 aUGIAURfaOVLW7nj7AthGrm3d71+ni1Y0cfSmEEH7u8kj8C1tuPcQ/TPXtR+ur8ZJb
	 j5Gn0D4es1ctw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0DACD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177827685368.23304.10311651297735532720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd797a89d2af980362bc080b8bdf17988731a2e95542ac6af311a309e001cb1
Date: Fri, 08 May 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778276853
