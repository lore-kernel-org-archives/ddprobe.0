Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF5E272810
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 12:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764417774; cv=none; b=Mnw1jdJENPpMtIZzYszNdtO2c4g+v+aGt+uuUjFHQQXkGWvVyp99wxpCj8DghNo+vpiTMkvqSha5fdV+rT7Yrrx+vqaKVoJE4sP5fpFqF8CjG6fQpwaJJhHQ0AEWDJ9XZ9c5D2ueki1s1WZ7q9maHiRVfiUP/WxWho1OG7NoTWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764417774; c=relaxed/simple;
	bh=W0+VfI2uSse67Y7A6dv7MIzQAAiPXKorJuyNZagQLq4=;
	h=To:Subject:From:Message-Id:Date; b=Gcdb4IXd2lntEkzisAiIB4DvCcd3FzhwWsLaxHZpN7R/WXdyYCE9JOC8n28wNQN2PxLJg7qUBBjydpFaCjaO7JdJB4QbvlWDVlD+NVobCOhTVZyBWznqsHclZMcYLMfeXcrBmSUh7hRluY+N3dD3Gv3uOdhKkPibqvmjduf5FVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXqTCL8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXqTCL8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E32C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764417773;
	bh=W0+VfI2uSse67Y7A6dv7MIzQAAiPXKorJuyNZagQLq4=;
	h=To:Subject:From:Date:From;
	b=AXqTCL8WUqUZzarB5Dz9cRhpbmfFgKUcXq1IzfB2G83K1d9Q2kp3+ebmhvBDQ3O9u
	 pzmgaj/dpfYlN279dva7qVn8Gju97aes5m2IaR4+W44AnICKEuhZBa6KS64mBSxJwI
	 cfgx6257cyz6t2w/GUdR8NIXDf4wCFEGp24YVp2DP9vofDigcHQdjz798cxgHbssx1
	 ZeHBRdBT74MShZGYSY43cwjBxXnInPYf1FDYWFzaGLyHSREhN2S3T+rDthryIVXcNa
	 6YdZYQqx5gbVoBcWDj/JJjbsPLpFS3p3Hm7WxUwWiXdkdIGuJeK+Mwk9QgUZgQ9oH8
	 cRdBzpLceTL3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BEECFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 12:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176441777358.28417.922099609120098788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffaa09979cac544dba19eafbe7d9a2d200a7943a706a10f17e9c33aad4f38558
Date: Sat, 29 Nov 2025 12:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764417773
