Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0678D21C9E5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766244234; cv=none; b=G+YSskfwyvkWtv9YEmvYKCBfFmstCtR66fA20oE03xtMeVvZllQOGmB983r1VlyNh5AInMz4tTbrF3ONh5VfbDXCP2LTbtVCAZLIiVUu9IDl9j+dEIIzRA3xZr45RJ/D+n5SPDojckkDhisY/ylpR+Cr6HQWVC+8xEYsYGKafFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766244234; c=relaxed/simple;
	bh=kDHufdM7uOZEkmAMDpJO/l4DdzTKT+RPZicmB76Yz/4=;
	h=To:Subject:From:Message-Id:Date; b=anbJZ6LsM23+e7mPTCcD9PDOXH2t5p5Qki0O+rEa9yj8tin7nv6xJuwslS/fJ9AvkunuJbf7DtoguwB8cymIlYHtdbD7gCUiYTKm6GsnP9PtupRQkuGKbvAvf4nC0Tow10VnTi/CWgZcGiC1hiiEGJ3T6GgFxNDJTSArwgF4kbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcTAFSAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcTAFSAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCC5C116D0
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766244233;
	bh=kDHufdM7uOZEkmAMDpJO/l4DdzTKT+RPZicmB76Yz/4=;
	h=To:Subject:From:Date:From;
	b=gcTAFSAj+GvRTaAsBg3v2kCQkJrin58qjZlKa93UJ6nBf2J2GvzcNbLeY0hv1blOO
	 0rmePNGmzwV5/5tQtA6/bThnRGw/oDc6c3KtB617IR4KgwVwvNOcGJ6EkRk8FdQuRy
	 wYaKZDaqBNWfTi/K9CA10Aadf4iRElq3tfbTp3jgASZ8qZPZeQAu3ohn7z9//ZdUfA
	 CXLkkEPVuuj5nvSqOjPMcU0hYU4tmJxjQ/oKPMlAZgIv5DEDXAUcWCkhuTR7ZLrHdP
	 KoFa6vrr4T77Q2G1m23uuAA1tBwlWB518oWg/zCKuTwIx4rLUInJdvbiRTlbFEn/4Q
	 ulZuV6qt0B/QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F317E668B8
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176624423357.5207.4658864188974681146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6513707d739b97f639969dcf3e3c28cad7ac91942e351fa90d44084345fc0116
Date: Sat, 20 Dec 2025 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766244233
