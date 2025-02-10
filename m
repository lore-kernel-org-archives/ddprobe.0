Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B8F35963
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 15:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739200554; cv=none; b=jKXAn4X1tqTryPNDAn+qGT5p3wr7iRvTajcu0aokqHnxRYW5Y7UK93705i1OIPZ4ZE/ZgF3IcWOFeWtQPtw2xEis1NIhn5IFiMpb6m5LH1CkGheQ90DZB2IBq7eAK3WvthFbGli/Ef0UQzneUK80y0+SpLK8OY0bRrAfLKBnIZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739200554; c=relaxed/simple;
	bh=cayK3VTxTF/HddWKB0Fxy163KS5GBSwjtO3die8UjSM=;
	h=To:Subject:From:Message-Id:Date; b=szhkz7YG+19m+farhMH7Eiw5XA/6pl0GKkUguEpVlmo+2SkHJwSC8gd9VriuPRE4XV/Z33GQUHtp4pk0Pkjk9uZt8P+9ZkHgizwcwknmTA3+qKMjz0B2c1cMSc0MOuuqB4gvDoNWAOF1BBt0FXWHLleO7zNmIQTIBIKgVR3kyTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHLLM8ZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHLLM8ZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0686EC4CEDF
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 15:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739200554;
	bh=cayK3VTxTF/HddWKB0Fxy163KS5GBSwjtO3die8UjSM=;
	h=To:Subject:From:Date:From;
	b=YHLLM8ZT1MkpH0xFtLjXJ7hgGfuxJ1aL48nyXi41sLoxw9AYoaz6YGVAFZnh8tYJQ
	 JTPqAKe0Zg6LI/U9XoO4zGCNpXlwRhfgXMKiA2VhHZCp3Uc7z5v6Sf4ChPG2lfilbD
	 HQ9j/6gkm6JIEFRlxm9p3Gy9xb5KRrixRUPRGk3WcnWVCrT3GK+Vc5Z3KQhFH3GZGj
	 cJcimFAtSruZIRjSgzURdQg+9O5dBjezYmuiDc+8Q4UQ+DsgnGpIvqG33d745sjss8
	 cFCTrFt4wTAUiQZGEtYGnbnuixesdyGuWYkGXrIvTEskaX9Jbq1A9RYcPIUe6FAgCR
	 wi2ix50F21Iqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBD82C02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173920055381.21463.11356240397629723891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfe2b4d33c8c276d5e56b858f2b6571bc9ea3e3e5e17b81ead510a0e4f3acad7
Date: Mon, 10 Feb 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739200553
