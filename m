Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E70E13635C
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749473394; cv=none; b=G1bghcScwbbzWEa490o01CeLxqlKO4jAwK0w0kuCdf0NTzScGmHmIhFmMbvDJTiVAwUHPx6EZL4WrpKUBuWEzlTmRS1n2gkgUoUL4TY9VkidDTEdeZPyDtklVMklfGKlel53JXf4klX0Y2thjxdbDIHhsVYFQiUFF5fYDMr/ot0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749473394; c=relaxed/simple;
	bh=1BBcb9Pnjuo/ry7z8UWkdwxWJGe3NzNFelNd1OTenUo=;
	h=To:Subject:From:Message-Id:Date; b=FLqPjrldgIhXBJIQDPn8hkPAl5jSIz5uD6kNCyYmSMzph50mZkcsQF0KcsJ8pRkSGbVaqmYhJ8/0t/FruArCfM1tz2J9YMNGwTO0beY4b7LlU7EbE8eSVZXAhVUn/xWTeR/Rrd4f5jGu0RCE5bUhb250keVwrc0HM8I97WkXgvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFJmOheL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFJmOheL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A54C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749473393;
	bh=1BBcb9Pnjuo/ry7z8UWkdwxWJGe3NzNFelNd1OTenUo=;
	h=To:Subject:From:Date:From;
	b=mFJmOheLTK7seTKSoPKRqAKDoPfU0Be/8GDsB/8OEOa9POJyVWGRyNjwSy5PXoHbN
	 Zf3UhuDLCLM1EjlXnYDbOKy/Dkeq0O4979WjiRp/KhNH9Zo4c7dpsZ4o+Pvm8lsVgw
	 atg58dA7Djm+pPWtfc41oakYphPX9+iPkjpYDFn0YtAMMSWs7jpqmeIFJFw5ZWIHm8
	 lfMepbSY1unlDWLfTbkrLME6KckJphawT7hge4skFAk2FvYWRZNmv/niJ2Oh8PGK4f
	 M8KIhMUHZqgutA2Y/I16WxbQo5uTmI042mpZUP0S3LpIK6KVevB2ymCCd6W2epBlWJ
	 XuEk1UwAUQtHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD60C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174947339358.372.17855241184191196961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4948cd8ac96e12ca46d1fca32436751061d30b068f4bd00a91ffaed332fb8a04
Date: Mon, 09 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749473393
