Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A35B356A12
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792260034; cv=none; b=eOGPp7wZoVdZGfTBAnBn27vTUk7dOE+mxCerGMrqr3zHke/1YE7wFo1908zbm09HZbnxSz1TYiSLeLE0tGEAxZfADrCxxX3j/EAVHDzHBEbDYtwN4MT7Of4pyCQWrYPLoMDj1psg3OXgtZSDE+gxqKCVFYkZmqNLqrRaM26Ewf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792260034; c=relaxed/simple;
	bh=mZ6wi+J7DH27gPdWmZ5j1N3R3a++TJ9d0W/w4Q8U6lc=;
	h=To:Subject:From:Message-Id:Date; b=Z6FXSszDmuLTWMk65HrIEcGE6JJ4gjhv52qX6pRcZYFNPNkCHyl/i1Q9fKuxD/MhvS7Dh+4CwHWYS/Lt7v4VJJxnFqHOxZScKQzDpxedmCveNNP50BM87L2Z+Q7Fq6sJS/uHtxXtbB7GGq320HlFvNIPUtNEGKJy0sBqg3sQsU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbVWzVRA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbVWzVRA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCAAC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792260033;
	bh=mZ6wi+J7DH27gPdWmZ5j1N3R3a++TJ9d0W/w4Q8U6lc=;
	h=To:Subject:From:Date:From;
	b=KbVWzVRADjQgHyb4r+9261o1JxeVIuevgJNEyFsx2QOP6GG4hTU3jSM7zQJqDNb9u
	 /oDSUUlZBBTPsDKNZpSr2/QlIIXXk5OdW38Vm/Qy85a+TcTZzERpuhX7bEC+MceZwF
	 r5xeD5bhg420nJENfOKJhKJFL8UWeEEfrUZTdB2oPC+x00YfGa1Kmztu/4ReY6OjTj
	 UllIcUyUwtgYOE2s7QfxAdTXBqsr/2rNMlj1u7fs2O/67iTwKuKq82j9PufUKcu0RG
	 w+W7BEGHO7tIM072+PL2Gaf1TCoVyopG/U6DeTYy+IJ6q6d2PsEGvwzCVEieW5G/O4
	 RRR643O5JEURg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5154CCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179226003370.29761.3732997891125775887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43bbcc6d54b8121d37314da1756ed5091f99b18ee1be81874fe61cea550b55d2
Date: Sat, 17 Oct 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792260033
