Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5ABA31
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747454394; cv=none; b=UNPUixbb2UmGIMOhXNZf20hl6xVAz/1ojuEnDnjmjM3OLzjW6OpjiNvL3J91NWLlPVh3A8DT83sE9eclbcTczzcmivZ7ogELcoi62em9/SE2Zn/+nqjqaXofljx/5/b0nVc5+Suc+JvN2+if+qPJEq1mBciw3yy1M/wWKBQN1Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747454394; c=relaxed/simple;
	bh=Cq7arwUkHpirKqgOAVfH4SdopenQOjPDspqFAGZALcg=;
	h=To:Subject:From:Message-Id:Date; b=Df4nmddFunmJplcDXmOikMBAMMH9EZNBmNCsgZ2oLUKMnEAoFL9s4d3E0j0o7b961D9HdcWsugMRKLudtfJ0RsZPbmjkOI8rtQ0RCsDjYXnkB427HXxS+pCLNJ1Js++iJW2dVwhTD6rPoGx3xpvw5ekOTjiYjrw+2iTbZHb1R38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qV5PmcHw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qV5PmcHw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F5EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747454393;
	bh=Cq7arwUkHpirKqgOAVfH4SdopenQOjPDspqFAGZALcg=;
	h=To:Subject:From:Date:From;
	b=qV5PmcHwsNZme1RCQG9BJ3Qz1NNFnz6qAI76jXGF3WLidtk3YMgT77ZUsiKhCm+DT
	 jbQawHkqPyQQISSYm/7LwRdhCpA1/aa2QS8UcKw/FwBp7AwViBVi3I5FMKNaw66TB4
	 bNPOCHEy8UqvbbABA/Unbz3BSA2lHl74uD5sp4Z6CuVsCcEaGX5WtRSCfOTSSVIwuq
	 8nTO5+flDrT+bzfsNc2NUrMF6gCykt1wReGcs3zuD1f0mrOkVD8mZankf1DV4jrAt3
	 T3CFPHhM/8sDbQSYYmNfX3Okv5YqegM2R5TfrKpJT1s1uzW5OrUg8Z4vzPsUHDlb+9
	 /+W3OXRXQAmcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F39C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174745439357.22343.3103335353622353710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a611fd1690675cd0df8fbb218813aeadd1f220dbe9aaeaebf6fb774e71942df3
Date: Sat, 17 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747454393
