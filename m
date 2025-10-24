Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115CB2AD25
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761272994; cv=none; b=JvRGa0/jSxK9RHjdDxl1WNn2K8AI5W63i0iEuUAiuHFZFQZIzeq0gslUHz1xLLd5QeIzBnOaPpEmby4LphuiJ2SeKYcHwR8X6lWJrULWkOd/6yZs9SfJBhaOCWhBB3fLKVDsXtuq15bFSswSeqJXH0zHYIzu545lXBJy7eVp4fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761272994; c=relaxed/simple;
	bh=xvQD2Ff2otPTxYVdj17wz5/Lzmp8ZD+BSdxF9SAWF0w=;
	h=To:Subject:From:Message-Id:Date; b=IVvzDgSP8iiCdm2Rmp4HqRW0uIbE+1BTLpI3d99Y4BVTKefJZDjbYbxmTADd56+xeWqjFHevrqi3xpdun5r6TKl8KNeWixLYno9pWFQ2WM1tWJ+5qyRrxSxRmPvbXdKWlAI4xhN90AUpL+XUvi3rjfftFvXBil5V8cvdgLxG6l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3nFsxwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3nFsxwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D51C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761272993;
	bh=xvQD2Ff2otPTxYVdj17wz5/Lzmp8ZD+BSdxF9SAWF0w=;
	h=To:Subject:From:Date:From;
	b=T3nFsxwTBaxlr3XYdUpw8nA9y+CjVX5Z9EdL705BIrxMkABAcwzjuwnlFo/qGUK0W
	 oZVu2BdRlrQxYhXoOljm11hFJ5YmcuGaSzLtV/W7UWQ4m2lnm+eVvSy+06gs53+2YW
	 GTxLWhnBlFiR37aJHfmmoWJmnZJQ9GhHkySmDxy3wJcVTsPaOOGXeyPAWzVSPYCqVC
	 n7SREN6cM4p+oPuNfioQynV8NuxZCPovJ3mtTCfv+p7Xavc6YRvfW1TltX6V+UsT9H
	 q92nu2V5E3vnNsBQ+lmjRvuuSNgy9im/GgO+isUOMZVE5YtvU3SSlk68hKKYhHjtLD
	 R7c/xUJbuW5DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B63FCCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176127299361.2996.3843648379850208579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d248f3859245a96be0d8bda5c6aabd321d2e5be33969cdd637abd228d32d9fe
Date: Fri, 24 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761272993
