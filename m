Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E1C3EBF37
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771082694; cv=none; b=QvhGuuyJXLGmkz/8tWZRdkULuTGCXPbAI9FHf2lEAuLYqmqWmr+WYf/ZvEMGeilHddOtxGABlmv0v5PG64LaIOC9vM6UIhTdz/ZI4G/A6CRgkr8TL5JR91x6kGd8JdyM3QsElLoWhtbom0wFv4xy+K5Ui+JYMRCULLBgZW4ZkXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771082694; c=relaxed/simple;
	bh=1UdNi7OcLuYxpageQoJuJVwcfeMkolKoAP+LFaL+5DY=;
	h=To:Subject:From:Message-Id:Date; b=OHCUY0T8fQjstVcvU7rbGz1IDvVNZCi0PMbHqadIa6Ha2x5ylQLmJu3rMLKvs6tApITe9TGQbyEMHd/Tdy0vAHVP1DNcOMcvy0PxpV6Rm2JIw+Ee820zdrmZ4Bo+yNbiWABSqKXeoyfxZGTahMRAusXBd4bNVW3U3xX73MOU2Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnqDmRVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnqDmRVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B64B9C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771082693;
	bh=1UdNi7OcLuYxpageQoJuJVwcfeMkolKoAP+LFaL+5DY=;
	h=To:Subject:From:Date:From;
	b=NnqDmRVXIK7k+KXSGKDXOLwLntgLYziLcEp2uuJKCt1nUzfCAgO+FBzWvapk0zxf+
	 oyHTWHfODeDk4JYRS9Bt8kOz7L/jaRU6m6Mn1oaIHcmv9AjNVWQw+V5XN2BMif+Ma5
	 m36L2S+2BuW3SRVU3G78FOvYVqCNldedlxRElXuSig/xlhrKJDgD8xvOmHCq3cJDg1
	 sRWb9s4wLH5RTYgycLyKXfwtqRfoWKWTAKrigU2KyQbKd0lWtvlS4XLwX8lb7i8qR3
	 PHHXnrkUeygTZFLYW639zrJPjX2HNRC5bLU2pUkrMH1ZWCrMv0M4SwtozYyZoGUuv6
	 plrjEGD1yu7/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A150AEDF15A
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177108269361.16416.5087437238858666672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caad081d58cd75dac2faa63446be23a87f00cb92b091fe1d29444ca752a83a28
Date: Sat, 14 Feb 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771082693
