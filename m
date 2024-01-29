Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0932E55761
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706518697; cv=none; b=usdJdSEZlxOAIi0yGVVEm5lshON6QPl2/O8Be3N9e9LQz6dkhBkIGBa3s6jTDgNCopOTSMQA9XZmgcz/GCkrhYWvaxxzeXrWZnNJ9AY2ni5x89XsXHQTB9jSqL1nf3x5NVofzFKAd5RFzRu/01nO0XG1NJViQ+8Xc4VVIPCNTc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706518697; c=relaxed/simple;
	bh=AzUjR/b5sNn0OerA13elvC5ZIABxMuDZ/0xb6obccH4=;
	h=To:Subject:From:Message-Id:Date; b=jXhI6fYtcIVXu4fJgoOIhwdLCDm8P9OB3YRuDbKidLeVjIhBmURmGKwhvgLbWNBvadpVBn9QfI8FAny+4nH4FGVl9aiZHKUZVJDlJ6/Dy/IOGOGnaFiZON5O6jUcYb+S8slp4TdWhG3puCdyWmP9eNXkrsE9hU9qKVdJNVUwLrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wt9weB+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wt9weB+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84EECC433C7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706518696;
	bh=AzUjR/b5sNn0OerA13elvC5ZIABxMuDZ/0xb6obccH4=;
	h=To:Subject:From:Date:From;
	b=Wt9weB+zybTGrBsJ6LcOyOQMP08MN4TMPGX/joh4r06DXU02xwOXIVCi8TOQ8/xeo
	 bsiOoDtrN1eUppGoDkMwDiNg9o2mXWD/2284ML/oH0gvXjmk2LE1bqOH48/KsMc/NE
	 sgkWuvCd8vtVaz3L5fYlKuvQNnSEGZS8yoRMVZFpq+5i4X8S7ewfwdCtRyG4l5l+JA
	 B6UPJqG1owW60bnpNb7DWyLC6h4ZFgdiYtw+/AvkzksiWePdss1fYGrX+Pdp7nBKjh
	 oabsLB16bWy8+C7ra9joKkLp5heAjPYgPRD/orJ/01RY93Lj9bvj4Yi6IaeRKHu2PZ
	 PbrY+LGxUfL6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64544C47422
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170651869640.16566.11119608902135293999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e774a789495cf22dd8df8812f9431f2de1476c54e0e426b1fd6a93329fe30c53
Date: Mon, 29 Jan 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706518696
