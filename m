Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBB5409602
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 13:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779196834; cv=none; b=iGczRG3JD/bZgmiT8fznY1sTSzEL8Yt/ZpP6oeFpZ9qRYi9KycHAUlkGWvGzEzDwM6wmvXQGLona6ZD1FVR7zf4c+O9xn/75nKdK9TBObggRwaXqkGSyPMpsjzJGA43J71NDCp5nNvHleek7fJcEh9UazzPCFYDpZ6hTmsE5cYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779196834; c=relaxed/simple;
	bh=jIFOGh5dERYWXjclsmVSYkzLRNcRnPbZSINkR5bqE7s=;
	h=To:Subject:From:Message-Id:Date; b=UTUc4cgY6KhujP1pQaASlchumWls9dLhGC/WwhC4DGLaQBGHaQ6b0Y1ei7IvdznbfbCk5DVMCw4lLN0yKmxXwAXk4PlaBHSiDCRjaEujktgZvXNunzLiobvKFp/W5+8imUbutWv0i5qHYn8ysACITc2KZ20fkdlWfk/Ew07N35Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMINibhb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMINibhb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9669C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779196833;
	bh=jIFOGh5dERYWXjclsmVSYkzLRNcRnPbZSINkR5bqE7s=;
	h=To:Subject:From:Date:From;
	b=bMINibhbs+ZwS0xQVpE0HzBk6J1F6yVHERwqfKn7O34dBJ9aO0L6gjXAJtKwjBApC
	 +hnlSBLNxeKn3II9YWiIhb/HcD7phfQd/fGo4Y4j8vmhnRAqnBA7AStFDad/cDfOT4
	 wEyU8+vVp+yUmceD6stQ30DTsoddszBUJbJ3YDC/0N3lQWDVsIRnvEheRjeWoCgcNY
	 FzZjQbZmaap+JWbnEfa8JwL3K7o7YsSAmOaoz2z9eqWXMjZeHB06LeOUUQ5u/5tPUW
	 JLFHmJWULvnt+hhPRI7aaiB23QtBgEQXfTXr0y/OC2UAfsPegK6LbHYS/v4gJjWiMy
	 WSa0C8+hXlBBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA98BCD5BA4
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177919683368.19787.17707636964219051321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd79af0d8d2db393f607af7e766f4f85f35b687fef9e7251c0e839cdc6ee8bfd
Date: Tue, 19 May 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779196833
