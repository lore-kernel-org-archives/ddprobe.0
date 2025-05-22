Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A28EC5
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747888194; cv=none; b=Jy8ep0q5OpC7Qp8UwiqN/TS47ZO9YmUqV5IFb+H4tkWobtzaBTMwSlCV2+Fjb/rtsqrLgZkoOolOoZKPrqXLDP1Mcn7L8aEk+5YArZKV5355xb6u3+YNjPX99QghfWZp4Z0m2B1yvEBBHHzoc0kSZ8oOPvdaOUZpfISSiMjwOh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747888194; c=relaxed/simple;
	bh=AxTxReYXsmkuTlJM/Xt8XxBlI8jUM7NT8j9z7is3pRk=;
	h=To:Subject:From:Message-Id:Date; b=puyJghYvB0k3pUJXbGdF1H4rKnHHTQrsIjF5dtWKffIKuhee0pGkX8ov4xGd8fjIDVDv8YpHv3ECAiA7KUM3xjHLtqy0NfOscD2uhRvVAqBBIV7HBMDVmkYj5bc6GwJYXPKCrsSuITucOxVejVM2C0a863R7HPVpYYBZJVkaBvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9z+/Tcq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9z+/Tcq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DCEC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747888193;
	bh=AxTxReYXsmkuTlJM/Xt8XxBlI8jUM7NT8j9z7is3pRk=;
	h=To:Subject:From:Date:From;
	b=U9z+/TcqGCOPY1Nilv0uN3dT8PCYK8kQy5tja9kOHbdBSv2eKnGb0fgwKbsuIAIfz
	 5oz0+t+5AH6JDqowNY+vyzCvxr5DW2ZjnpWvtYxkxnevIMI0inEN06Dp7WlAC0IaIh
	 wqmxi8MdswJDd4p5xRxcJ6uOGqSZzox/AyEKGzma5wyKLdF6ngujfVlMM6V+3Y1aEB
	 5D9RLci7Yc0k/nxfQOHw0HMI50H3rFcx6LboVvlRoG5mSdFB2KVZe2dHwsc2VQrvux
	 4GZkgfo15ltAFmazLsXJuLhEp7/PMUyZTl+gCFHDw4/HrVDogT/+4N0xDsl1N3xrKM
	 xQPFWkQwpLvsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932CBC54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174788819359.31074.1396504871546243902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f587ea0895de3df138a3bc9dbe764bbbbb8ef96569479db0af7a29af1c6b13ea
Date: Thu, 22 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747888193
