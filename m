Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3668F20F081
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748681394; cv=none; b=nPiDpgSfbwea2U26UElBZzcV3N2Rd7kDBtzmo4GpSeSJh3T6N0v8MVDt8yvhqFdN0X8GC/m4HeM3peu08StFRDCqvfaCTCj/TbB5bXLyTpvpB6JPU4/vecPL9oJZr0jkXQ0GQsFs7o1h6PjkxL+b/WXbmPDfh1TydQsCiYOVfkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748681394; c=relaxed/simple;
	bh=qW+LM2hlY+I1CVuYxJGzibsfvfRTLyLGMk8qMj34R3o=;
	h=To:Subject:From:Message-Id:Date; b=CJsF9KFnMSgXtis3AMYUsZQVZ+pD60v7faamj+/DhM0M6HFnrGccDKIApDNcKaiuWAsso1EIEnZPq9Cb+Q80t8g19Ro1AhyP4UrsKJxjmmFCgWAb0kf6OFHx/rLNVKtOhr5Vdhv/cas4KmB9A+fOwwQh23pDNYXyqnCXMvnFjHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXCMz3i1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXCMz3i1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D45C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748681393;
	bh=qW+LM2hlY+I1CVuYxJGzibsfvfRTLyLGMk8qMj34R3o=;
	h=To:Subject:From:Date:From;
	b=tXCMz3i1lNKrRUke6LwBdKAPSkFAeCj/ekIGu/NtgyHnD/6nouTI0Li8B6ja/45DF
	 UC1W5X7F/3oPWUVc5uh7P0jNHpOfvN4165EkInlS3hbkJzEmTG2LOkOSKjalDX+XEi
	 ivzOzzc59pVNqhMFYVQm+9BSceE+3JFoLt4uZyXMP/oT9wTHX1Hc8KxbhtF565pKtn
	 4i4eDZo71Mr1STHKlX4U3exe6/mYuLMhJa1fxbooG4ZHYUWw+/tAg8FIsCTyltmHFz
	 +uIKmQRatPT4lgn36w2riaOBJDY1OuAKNrVquBFkjxdZVpBU86RC+vpjxjq+8rlBpg
	 VLm77/qheL6wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94079C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174868139357.27868.13611791455870712213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 332d1c40438ffee4890fd1acbc284bca64c47231034606a7d11af5e772318ce0
Date: Sat, 31 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748681393
