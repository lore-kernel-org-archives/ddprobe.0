Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105B62DAFA5
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758107395; cv=none; b=Kav64P2FPQXBUkRUva3Un8NsRNxVFc7UdvIsrgg40V0GsYjQqXreqtPzI9miGQeE01MbnuH+73qASfSfqzqI76VRWBbxFSYlpJoq/t5sqLPbTOlyVSJxh/YcBfrI5bb/kII1bl5nCWKGYJ7iClz6O0n9UYwaXztECBHOYhXmFFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758107395; c=relaxed/simple;
	bh=z9HoLiwwewlEbmNSCBQsvu2Zmf2aJhfRRPef2b/UPfY=;
	h=To:Subject:From:Message-Id:Date; b=tUvKJPQ7tv//6X/KI/2vElacNAiGqf7BL4kSnCcvJMDkFeZUurLA/ToQpwISzvCk1KR/D2O0Ofx75xeKHGNCfvK8K6wuGplJOxE10764pLLd3kau3mPZFpTalOmCXDeSKtz8mwvyfxvtPK1OFvLAgEGVcLebssWHw3F9S8foe2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfP+bJv6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfP+bJv6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A462CC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758107393;
	bh=z9HoLiwwewlEbmNSCBQsvu2Zmf2aJhfRRPef2b/UPfY=;
	h=To:Subject:From:Date:From;
	b=RfP+bJv6hZH+4LgIRWczqxotxkV+FG0I1U1/s57+w4Ys4n6HW84FuI7swgOfw0eq+
	 +GtRO783LCebxouvZ/VjXgb5Zv99TNbIJB+125lPKjxYlH5WWTHoSBnPQWLTYO4E1v
	 YVvfqlS1R0s17dqIIfoj5ZHFmQNMsq/CG26LV+AlixN9vVQpfyG5z/3d3UW/Ka+F50
	 hytNrrq7+1zqt3QS6g+xSyuFxX2sTnWovsBCIB+gLKZSw5M5bUXIWDUN0UIQxUZMrD
	 b+M2pKruYqhcjSZ5ESBZvKX2i7z7N1HY3w9RyYahMVjXKR3Naur2lJPFY6892UDnGG
	 fAw0ewWQaxrGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA5CCA0EE8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175810739358.26389.14173033600168489232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bad138da09b881455b1fa574af959ccea837b740bb016c3f26373b61a52fd6c2
Date: Wed, 17 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758107393
