Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233892D7BF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756307394; cv=none; b=ZTB15SmAO2mGRxI44eQ6AU+Ijdsosag65Aufa6gVFTEmt+3EsMqfA7mBdDykTkXWeZm8TBZTDUsrjaS2Y/3sChmqPV3QZsFfe8pyXaWFdIS4y0qSgQAbwUcWr4ZeActYWnABRPEmlPE2EuWro6kTfnC6lXq31DaSZIZVHOlZBAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756307394; c=relaxed/simple;
	bh=KJlh3pePcO2bmb71YxeJU2wF/e4lH55wa1lUEGyCNGw=;
	h=To:Subject:From:Message-Id:Date; b=l3yWPMGqBb9qDNP6OJVtR4dZMdGhs0edIskGwCWpGDFBRATYqZ1vWxC4UjPoOZN/F/bznhBl0WCaiUOInk4gp9FQixOxDFtyoCSnJTM0JuvReWl0bSEjMATZUsy1svjJPEMPLqNFieUTsMQWNSfoEV4ys9qiYhDt4Mc/5i1rA2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8IVSCCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8IVSCCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47FAC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756307393;
	bh=KJlh3pePcO2bmb71YxeJU2wF/e4lH55wa1lUEGyCNGw=;
	h=To:Subject:From:Date:From;
	b=o8IVSCCLdAXVsqMzmRcwuTqcRSA7aWxqjtj4U5P91Mc15SFDzNKSHs0EzqMJdmhWL
	 FykNF/7pO/NVGsxF3IqgacJtGumvxpRmUrXo/l0Xo9ZLjbR6KLEQqLF4SRPfPy9rZZ
	 73FG7PBZGZNiky7tGEkXSfqNm7PYcA3mRk1xonihHPSyHlbj8fvN/mdMxVedtiFYcp
	 Zz2Aj4PIPRE6Ry013bvryQ/7LLoFbA5dgyOhwOUB9FtHQx1BkHbwoIVxwDDf+n5AM4
	 V2tvUhRHgERMsSj3KM1nybkqKKVcgxpi7ChYOwBqyh0O8UXPQY1lCoFUrUwJw8vkqj
	 lAYNodN+uakmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBE9CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175630739358.20220.1527681886848009550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5068821d13ecf430dc0606ba751d49c102a06182b1ebfff797025c2471119dc9
Date: Wed, 27 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756307393
