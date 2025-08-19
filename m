Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B53275861
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755616194; cv=none; b=fFT6s3zk0GyJbprS5Wzwcd2KiB1r8+E5N7Kcxta9jwQrPqv73rGuf2fTXKpBnJO+foqx4UKEjYQBvgtlAGsE8hwYtV4jAt5yoqUVlLKEpfFWsfbNBDE9s+afZ3gvYD3h29kitggFTh3OVNz2fMcWl5+CEGd/khBIpIWSr65DqKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755616194; c=relaxed/simple;
	bh=QDH0y71sz/EOTlVX1JQWbqq/FTBzS7cc9J7VlRiSpPo=;
	h=To:Subject:From:Message-Id:Date; b=evE0UDhe7VKXy5hJl+HKiWgEGTpegER5sfr0jqfa3Nj96MWWFeyqAxhRFehuB+yQwRfRkuIbaRmBHJMezz9Yk9A7Hw3wsdK1opWUOPIGknfQ8rTRd/bMNDY/B+Dzo4AsEgKymOgRmlsGXcufoqD6+YEmYv+b135CivW/d4SLPtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNK1pR4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNK1pR4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDD0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755616193;
	bh=QDH0y71sz/EOTlVX1JQWbqq/FTBzS7cc9J7VlRiSpPo=;
	h=To:Subject:From:Date:From;
	b=LNK1pR4ANcJEpECEylTEI8nMbKNQOXS3MhPvapdJJnA1O3Cqpgi8TahhjkCKa8kts
	 4Q/5TuUvWnWA3CFz7BJcdz5gAiGN9EXQGeytxBJBTbh6HXT0hvlpfPChuRTtHQulDV
	 f423XlzJRhxPIgDe+irmMxtse8lqpetpRMdYlys1FSAqRLGVec57mQWFKkxHOCFu6J
	 i5mKnPVZwy8HqXl55eXnzAiyqJzgBGUoH4KCE7fvwA7SFV6SYkIk5wxf/afr+FWiCR
	 6p7P9SYIVPfRm1hfGyXE3F/LMVFE8W4P+RRqkDNKlHtRLdFBu/Vi/+0NmQlY3S/gvi
	 W7FJ5Bhesnivw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F678CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175561619357.28148.12251790825050746868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49734a3df84e6124d73bf08211182dc7a769e407524fd37f039c1ce7688fe944
Date: Tue, 19 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755616193
