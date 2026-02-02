Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3337F41C71
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769994834; cv=none; b=mDcbVYfyrQIPBzSi71OtbfkLk9tD2V6PnofpoIoboiE8jmvtpCTvhcfzzFfRQ5WXLcDtWI8tMkk5JC79PWvwnNmrrWUTZN/3xI/bMu/42UVCjrmRg3r8C2jWnNmu5qdPQmyvqnUVI9qhsn+Q5CEaLZjEA1YhjMcYcyxr7Rz1LLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769994834; c=relaxed/simple;
	bh=NLsCs5B8EUHpPw+0pZeQWVBzurFhL+Gt5yhVozNKg/M=;
	h=To:Subject:From:Message-Id:Date; b=sX21CtLaO0MLA5ag0//7bRt4ccZENY8il/X30xPuMFoyyYsYnmi+NUe9vSH4zgsKjwaeGRdgI7Rj3p08lWRbdwW98N7zPIusnYLanHBbmKRCQqgEHyCduYm6SrOmeziU5DFE/UVT0eurd8vDQUPj4OOBM708xkvJNN/pKkT8eRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8/2LNBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8/2LNBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2444C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769994833;
	bh=NLsCs5B8EUHpPw+0pZeQWVBzurFhL+Gt5yhVozNKg/M=;
	h=To:Subject:From:Date:From;
	b=K8/2LNBoxZQxTp8knWjxVMHRlaIhtUejurbjQv9u8MmcSivuQsScmuV6J+vGD3TkA
	 4p6pjpUaZNIIFg4q9Mb1m8UwDjTNfV66Rqm00y/TBYVzddyRCBgjK/Pv0yH+pAJO5A
	 OL50Wxe6+5x+M1l9QXYfeUCtaSVrWJpJMXq9c7wwByyyDon7c11rF0uvkp25JJxTo/
	 hk63knDGpIHfnXOKnOION+SXA35/ZC0N369fsUKIJfu4o4x4RIWfulem21xUaq9fSl
	 EiXy5rqDsPFhqaMmwAI0Q4b1+T7HQl/g6mI5OwYyEBYTWU8u14p+kDLod87JCM5ZpR
	 gAuX96ZcoEEnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A789CD172AB
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176999483362.14681.5371416813910201525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0807d258bd204a15a0aaa240181a27179a442a97cd481d36c50d654f8e3daf92
Date: Mon, 02 Feb 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769994833
