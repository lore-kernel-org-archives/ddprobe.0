Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50ED32054F7
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742063994; cv=none; b=IQfhpyrkvj793+GM1FEidjl+MwWbUePILN3wXS48BjNLbDIzVvAP2ages6AWUNnnbVeZDi4SHAd13vctJZ0KWL+g1x0MWEa8R92Asza98FLihMuv+93jHLZu2ATBlQccaPhABsQ2d+rSEu8YoUpvHNNJAWzVCF+lpbDi4DzYrJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742063994; c=relaxed/simple;
	bh=zoZcyGaRPLkc/t7l1cOXPhlZhXsFHhysBfwaH3CkZ3w=;
	h=To:Subject:From:Message-Id:Date; b=nmT7o04RHxvd59DoNypsk9OqqjYlg5p1tdwLLqiqVPf/Hd7BM1iUsZxQB6VC6jkxWgYbiB6K/tZ1Hf/HmqWTDrySFSv4w/Rkd6VR7F3I8dpK/II9ICT72R6B72xhQB6Du2NqW9nLCi6ZRc74I6WZp+l2Jw8s2jzeHJx0Ga2WTvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWhnMxLm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWhnMxLm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C288AC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742063993;
	bh=zoZcyGaRPLkc/t7l1cOXPhlZhXsFHhysBfwaH3CkZ3w=;
	h=To:Subject:From:Date:From;
	b=jWhnMxLmv61JIuoEe/PrdbJdH25NqZvp7IXdmF/c7HdBb3/mgnEszv6z6qTTI8GRL
	 EaEJ99mItURxCG58f+w1lR3eNbmGTyGmLHl+Ye6sgjNShiyqveeidb+0MvV1PEeYJs
	 i/QYvIgp+vKNDi2zoYke8YLBQ32i949ySsltbp5SiwZc4f5Urv08T+rQGmvatVRcQf
	 YGdXwpbwKHyGxxNfM3xDhZs0LL0X7jmjzsNUYrDZCE9Zte0FPbIqnGirVwqBayzZbZ
	 rHvsxYHAKmnX/zMBs0UqQGyMVaOSbIelHLyoau3sdItBkT/WoIALBd1+2mhxmj3UoK
	 XnxTo71L//+KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB98C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174206399369.9866.6654010909733075867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9f2b49ba2283359c7ead907458e0f4384bc8ab16eed967b5963825f406624de
Date: Sat, 15 Mar 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742063993
