Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA29C1A58E
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711303697; cv=none; b=GeSlZMrrFv3akZbD1w2oNp5lW1BPcpYhHJvJc/htC9OJM3Q92eaGvdRRFNCV/9RukT/2sGRz2lR56C5+USuTlyJchYPOa8XlXdGLymzi3u5z3T5r2TWf0C1q9Oelmiy1/xaH8PB2Na8WHyIvMbY0Kpsx53tBc/Vvv7R9qlXd6AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711303697; c=relaxed/simple;
	bh=KBy9WyFY7vHIeWqNT27ZWQNOeETjttnktfFzudN9pMU=;
	h=To:Subject:From:Message-Id:Date; b=cTn5YlUvhjZUtwXLDurGfp6W+uIKjWFqxXrH3LFDBjyTCQdYBSkBzIJLbeTFgj5TdQGuG2qiyVA+Jf72Oa66lKrFVSLrjaEjJVDYMp+KgbLufaMKd6PdygeNOYjTq2BA05uHVxduN75cF790DlRYPTxfiYtjfU1xKka5kRlXq4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1vohOxO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1vohOxO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BC91C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711303696;
	bh=KBy9WyFY7vHIeWqNT27ZWQNOeETjttnktfFzudN9pMU=;
	h=To:Subject:From:Date:From;
	b=j1vohOxO9kHucE+LVSAs2TvgiVJMyGSxgqqDJj/q/4kEjSjq1dAQVWKzbMZnph+eA
	 BdncvHcpu/IEUKMcmvJpTqrobAEc8YPSzyldHpkNIsmHy02ACRGfFdsVk8tR0kK9gq
	 zx6ViqKkTS8BKnEVi6fdXeh+H1Wa3kY3sMuNX/5RHqh2YEjIiHFyXSc7gqsjtcm0h7
	 9dllLfJZPxnk26KEfvn7BP83APpSwJeDVebFGJv2NHC9l2ORgzQtQ0L4pNfiT1IJTd
	 2/VKspDGq/3gtBOOGv12pqbNkP3+J9YnJFBMEydczqEmDfHPYCnN8B1eaWrvk7hXZB
	 C/xcWYlcUUaSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A1BDC6FD1F
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171130369642.4986.13548903003671337892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e77c13ac603d987dfe06e590636adbe163ef06f730cc420b54a96a9cece5e194
Date: Sun, 24 Mar 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711303696
