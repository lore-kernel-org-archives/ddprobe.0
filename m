Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCB531A551
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756223994; cv=none; b=fvJLY163mNoyQ4w7HIAWH0AlL8plteE8YPxrIvUPJyp200feKIfjJ7dyzysh38z2KHr75T8Fj+DUP8hM7IzdRRjI2508UBB5XZ61NzCrKu5YuBos4k21+tEo3S1Kue/slP8SobTILIddQAGF4Y5yJ016NVgbi/RRkEY4QHVGiuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756223994; c=relaxed/simple;
	bh=B1F+umNRxwLIPOPzqPqgUW7Yps8Dc9dWUy3IOMLB9Ws=;
	h=To:Subject:From:Message-Id:Date; b=mFV7L39XoXF9RTBjMb6xgbg6HmmmSw8Sd0/HG2I5fcYv5W+0/egbZk89Bb6CVdGUpBIeTN2L/4kPHDj+7qYfHWsXsg5fMjhZGMdrQwXl7kojxYJjAGWbrT+iNngb9yYRJ+miox0nCrsikqO9AMDte+g842Lyc41FGUSwVepYLlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrQ6qYL+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RrQ6qYL+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A50C113CF
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756223993;
	bh=B1F+umNRxwLIPOPzqPqgUW7Yps8Dc9dWUy3IOMLB9Ws=;
	h=To:Subject:From:Date:From;
	b=RrQ6qYL+zF8E05dBQqEj4egm6VOXDfXxtxDwVfe8TYDwXcd9FmeHLRua1dE4NBb11
	 Ia2WCkVW8yn9k85FOKeRa82eXZB1qhrp9DiFY/cpQbDHK9krS5NjpO8Gu+Fv9T9Uji
	 esqRVHKztjDI93IZmQ6I/V67KrXHVOKFE4C6dZJizNqanDmVRdm5JtmXOz+ZDz83Yq
	 4MFuXKh1secmz5IeQS8EBwfW4yVlDUXfbE7C6FEDUgt5Xp7EjwnS1n5GN7eRqrkSh9
	 Nr8/Yux0RMk+Y6lPG8Dh2jlAP3YZBzYZMVNDPpYDY9aTqMQR1qwn8DqFOXBSjzEKWO
	 MvH3SeaPfHp3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8FBCA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175622399357.22459.10825498269300995701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90defdbdbab12771b9ab0e6f964ac3cd019cb64731b27c61678212035ec3a291
Date: Tue, 26 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756223993
