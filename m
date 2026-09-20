Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0F747D93A
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789933234; cv=none; b=Hu9pL5BhFY3Rmi3B9afIp+YmwdaLXtlxqeM5RutCzQ/Gv/7c1kDmoLWraN9jzulUshI/DrlNI0cF2w+J10P5xEN3m83RCBwHzDNMBqwvp4njik3excTP+44ffc14yLtRZG3YmT9qKNyofcokxcbnr38mohMVUU6Jehw7LvHLGLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789933234; c=relaxed/simple;
	bh=Jw/n/U6WZCFZL8ohJj5PO3v5olG6LR4ZOzf8WtozV6A=;
	h=To:Subject:From:Message-Id:Date; b=rLpk3kzvFZbUac3mfRAmyjkB8UlWg4dN+zL6CJvbaAnwDcQd/buGcVzBdTdTT2/yoA7cVICILRbp79WxLmq5vqxGQNkmMx9Y+RaTMOPh3xa6nyr3hfnMiy8x3/h10hVefbZ6+SV5OeImld2kolTz+uVI1YnNQ9nA8k3lehey1gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6u9tDLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6u9tDLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06ECC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789933233;
	bh=Jw/n/U6WZCFZL8ohJj5PO3v5olG6LR4ZOzf8WtozV6A=;
	h=To:Subject:From:Date:From;
	b=j6u9tDLIPNg63ETX0hnTE7XwCODvmiWzJm31YMy+4LKtKpuz5ojqQM02FjyaUL7U1
	 WUUNtCIru+I+6EkCTsuyybXUBxf8A2EQg9nxiRq/L3tXdwdasnmmUAoRYdoMzo18Jb
	 DoeNKtIHyWjsvy/+Ktw8Ce/PcAyUz14BSGkPBo65DSWWFQ9cH9hBynvxM3ABFurjDm
	 tgqwNvlZxzvk5ifznuJq4qnlIJyIz0lCBjEGDwuYKw4Q87i52z/qEPY/9ttUgG3wvL
	 rWgGzg/kGmI0mBDKYOHveTDQqez5XfVnOH566aw7yynMzIgljB/itu59j1AhzyYU8B
	 MRflk91vGbhXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8C9C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178993323370.13244.6623206295836787758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 653193229bfe1bbf66c712cbede4ce8062e27725233d4056cc8a0caf8be0579e
Date: Sun, 20 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789933233
