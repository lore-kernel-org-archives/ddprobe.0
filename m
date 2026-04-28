Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14228154425
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777343854; cv=none; b=EkhNDi8gBq9Jb1ZveA4vMnmxuL+BvJa2uoNd1Z+2sYx/+1AHqeZZNCYi0Ca13L126MPG1jcsYwEGmoXhSWfKQzChxEAPxb/eLftNoM8ilhvcpJf1iDAR3qJ6jaxVzAUAQJvEQhyNvurqRzTrZp8VEBfmz/RZAomy2SfWaeJxw7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777343854; c=relaxed/simple;
	bh=WnUcoGa/L9nAAoiVbUbBUUMRNwfZ/l5UWnX36fCZd3o=;
	h=To:Subject:From:Message-Id:Date; b=Ezk1AQt+pIweO/oD+RTvPWPtG3BRVi0A0R3KZl51WwoA3230MOtWjXIYH5/pRWNRsanm8yxwr0x87JZCyR5uz+xICnG1KDAVo8zeN8vRpIOEuFd6Qd/9kn/ylKoyzxEHY7ffxBa01xsdQ0DEhjcb33mgfNLFIi2PQ53HrNACHKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ct3i79+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ct3i79+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EBEC2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777343853;
	bh=WnUcoGa/L9nAAoiVbUbBUUMRNwfZ/l5UWnX36fCZd3o=;
	h=To:Subject:From:Date:From;
	b=Ct3i79+3LDeWrPEl4NRSdZLGKWIARcsodCIZM8kUuv8rGiTmWIejLyuieUYQ6NOXv
	 z2v7iAKYB537c1xCqObNQiTBuoYsR8GOdddO+i4IwNXM6L2RRR+HX6a1XGWsjakHFQ
	 +wS+wCDmPDz3c9ATYOxcIccbF8DAgH6wSlg8PC1Q+QhP4Varidid8A5zuFbFBxS0HI
	 cGAwTHSHpNmQGetFUPXaYRBsZXkS2bbVrhOKkstMbZHEZWdF7o+t24xvxmRBPaYqjX
	 DBgpFJ07rBGzYE1DNEorBGijVJlwnZD/veB4EVxhqHxFzNyiUlR+5I94Qc+2nYDTJI
	 ZhQVoKjrnwmfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C13FF8864
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177734385368.6782.15920927566766764211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd3466ad7e455083594e047fa812ee2ceac545d68885ed8aa33dd74389cb3d8
Date: Tue, 28 Apr 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777343853
