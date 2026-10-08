Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390A33B71D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791432034; cv=none; b=JBt0w6C5Th3uve+koFU/nu97ByDbIyuN15qnEkRCAHTfZPAeWEc5nlD/HO//BibyzsSo7RIK6yOc+5/FTGMagkX+t5GIg1sitt0yOJCYtcTGpLoIkhB9yb3lbxhNVqk9/0aHOL1tdxN1RY9vRSUhoB1P0FNNOi69WUVbR+tagDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791432034; c=relaxed/simple;
	bh=HdSB2xAjV3eO3DRVhlktP2gMOTiLm4AztDCl9lL3Tgs=;
	h=To:Subject:From:Message-Id:Date; b=M6FR9Od1OcJd3dD1GVJr3vr2S2nrXlFC4fjok3WfX6+bECInt8vSx56QBEnjKX9kpZCydLl/u0ZkzaDDiyOGf0SZaNDmNYKcCWfkgTytzz7jH/Rihj0dQ54iupoWp7SUnbUDArBwjfENhqrMS4FYSJ6EyMIFDEM/H4qqq+UlfQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPfPcWyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPfPcWyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF67DC2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791432033;
	bh=HdSB2xAjV3eO3DRVhlktP2gMOTiLm4AztDCl9lL3Tgs=;
	h=To:Subject:From:Date:From;
	b=vPfPcWycb7PO/scr7B2RpN7UTcmC+bsJYUMvqnWGsYqJq9cZKw8pN+3HmMToBBXTj
	 Yz2m1fO9QHHs/OpdKSQsxgm+rmKsAebhgQMkFaYYMfwXZsTaAcSpB6JR+CFLuda7R+
	 WuZFIatjUMG0S2jT43lOULYFhHCCZVY/UqD0WXizkKqBJK3/o1KKxSa2kXsrDhFQg8
	 2O42GyZMjQwjQ79wfn7h7MByYLUFfS8S+p8KQqav5pZhDXOCBcgmJbrhSCgzssfB8a
	 prE+jNz83N+f+ZUrs/QDI0Cc+PB7nv0PC6JNqtI5qRGtymwJ+RdjFIlOrfQX9wmt6T
	 cI4MzDJuDMCsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAD6CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179143203368.31411.15111631102703345461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51711869140e27916b6e00247632203fce62682eed69187da87bd64542438eee
Date: Thu, 08 Oct 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791432033
