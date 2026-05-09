Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F7B422541C
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 14:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778338654; cv=none; b=YCFSX4wo+YY7t/gRJ8y6SNFk4wE6fEHKpd27BTORd2vB8/RKgYN2J6hBj6/jza93ZvyK/u9/cwRHywDKMY7TiNQWYSz5LV+e4m5DkitQGTRutph9om5aGqMySMFaCFYe0vbpz5fjS3Pwk7q9qGG9bUOeNE4D58BWsPfWCpVD7Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778338654; c=relaxed/simple;
	bh=Ow+poPF8KAQo3yOw4JaWjMqQ/bddz5LBUD0yfxfqdbc=;
	h=To:Subject:From:Message-Id:Date; b=lx8m03yXFIe/OCeagRq/I4bJdXdf7/syB7MNbOPWoBOddn00Jz0t7fOpnmh2NrHgxl2Vxv7lhKxd+JBrFVyMlC5ttCL7foo+cB3B+DPaqg2jpsaehhLj1BE5jsH9BSkZHT2Wn5xct9q3S3gHwUjoxi2SzlU0nEX9YUhfcXfE23s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6nbsyj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6nbsyj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2C517C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 14:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778338654;
	bh=Ow+poPF8KAQo3yOw4JaWjMqQ/bddz5LBUD0yfxfqdbc=;
	h=To:Subject:From:Date:From;
	b=X6nbsyj4qLtu3pqTW1Az7lROFAwe6jibbtIqssUxr4QgrXVUYithTz3X8l1pCmGio
	 RlQkcrnx/7gpS+AQ/2CizvbeU0jQbNDkkkdKWh5EJlvtKo2/Xf3Nvl5Fc6Y4vuT3W+
	 tDpkYRrE8hS6HzXQub1Y4vJQFNyavr4vs7Jv0TTDWnkofRxfcMdc+6u/shvissNCb8
	 aScEh/3/+mM5l7g+w8BkVMz8EhYofm70cViExrqxOPQSee0vA3DmP3cidtXNGwVK9s
	 4gbE4kWrTxnMNnm5Ybf8VpKPCK2cO+OFsifTPy+nMW77U90MtY62wRg6jagllhj1Xt
	 1lid6fHAxKpFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3585CD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177833865388.7601.9687043383798510970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cdcad005a647ecb19af929eb5fdfc526fb6625e9626654c29a1bc2e68820c95
Date: Sat, 09 May 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778338653
