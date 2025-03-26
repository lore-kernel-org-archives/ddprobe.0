Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFCAB63CB
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742960394; cv=none; b=Dg3ZydBERQ2AxaOV4mh8uiKYqxmAxHR3YOHQT/6PbPO1rtdiyqGd5lQd9QcNElterz/O4O3Pxl4PKthuScOGQifz2AlQJjksKmXaXK5c47iM3Bqyg9e6kfnH9OcGg7dm8BuicHiRjuDDj3wItOQEs55SweGC6Pa62R5N/kswG1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742960394; c=relaxed/simple;
	bh=3eXhCwUG5p13OWEB+hgPWR3ssqNIAL1/F2+A0w46y+8=;
	h=To:Subject:From:Message-Id:Date; b=E+4H0P50om9Jyc2LKJxVoDJn6VTAJe5RtPguthRJfBNDeOC8b+sGvMKiOEgj3/HVOl888V49z4xCI2O2GV9OHHuuZYOTrmuybQSkrhE9LBeMYvLDqvfMTTa+nvcW0eAHVGsIIKxvF7FnXrZjdzLlhRCf6lAGYd6nafzhtqTtnqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qa+CRmbx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qa+CRmbx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC82AC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742960393;
	bh=3eXhCwUG5p13OWEB+hgPWR3ssqNIAL1/F2+A0w46y+8=;
	h=To:Subject:From:Date:From;
	b=qa+CRmbx3qaFB5FV2jO+I5UHE5XjCke60iB91lf3P2SkjidIz9XSo9REWwtJUKKi6
	 LQ4Vp9s+t3a6XHma9N90hWOifhtv9dHvLbzdOJ/ZCt3Ym2+I+nH/DN1OMaefGDD/j8
	 tfiSz/26rpqmXcgrRV5tFK2yzT9eho0cNUxqnz2JyjIlfq+Qb+uRYc8kdbkoUcGTyx
	 zuLtYxhanoD5ijkWW2w3xYr7YHJRaKrjnB9tXcgDbzBaKHhzVXMiUcNTrpNDcJjC7p
	 enN34c4VyIf1/x+OPNxwmtgawrYNqQoRPCId3YJRqgV147iqjdK9q1kRMGj0Cnxe0Z
	 vw7jDBp6Up8/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944ADC36005
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174296039359.7062.2220112387923228148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59cfb86124cedf36a8372fd1e7a9a233bf01171e900e6ba926ede650ab5581ec
Date: Wed, 26 Mar 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742960393
