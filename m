Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9259A224F0
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 10:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716285743; cv=none; b=kxn1QxN5Fv1jkRrnBpShjkiL5q36Eq/zMcBowbN8w1ylcMEjK3fusiJDHdUVYiBbdZhJrHNJIXs7JwEvHWLLZf0QUnQgmyv9NgY7iXfNOHGd+6HP1IzTJ/6TZ8vEWEQw2dfJ6hRldH+bKVkOvmfoLfApTfE9fx2K+tgRe5rwkOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716285743; c=relaxed/simple;
	bh=yn7Y9MXsj61SxN3QwPFyErwzkmLvaHf4Mm4HoIekmuI=;
	h=To:Subject:From:Message-Id:Date; b=o6h/HkvdPpNLh/l1zWIAb2LEccqWrxJHnHCkAD22JhCqcyj/jwP3aGwIOKk5HyX9rnFB07wS0gmbFyyJxyREyxxkf/Cccxg5qsrxfe0txio5f50/ouLmihv4BDnvA+rCdPbm3XabwgByVh2AwD9aD3GXYg+gbXQ3gvtUtXbT0c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZEcU6WS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZEcU6WS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 21F9FC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 10:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716285743;
	bh=yn7Y9MXsj61SxN3QwPFyErwzkmLvaHf4Mm4HoIekmuI=;
	h=To:Subject:From:Date:From;
	b=mZEcU6WS1fG56f3IUA4PNUIY0BdgUQIlbQ8BG/roFAcp8wqx4/2be6XbbafyLiXsg
	 n2Ba0A8ZxoBTATiSWLOohd99KsmiNyeIbzqiHPUDmjF9HkdEoFm5mLN4SB+KIPsr4G
	 izzSuvY6wK08AhE43d1M6OEoFo0DeLMHw6g7eO2HXUnlmbq4C1ObMerpn7HOCNH6Wu
	 rPKOgcil4AZVeOII+iOu5KGXKIGB8OFTXgUTegtWHMK/8MFGSitt+ZHr3FV5B2w9j7
	 yYR4QY8fN+N1z60GpqJWY+s/55FrTa9YyMXsQIo5rWilyqbqKUCtt3+LCTxQmlmMul
	 gSkLD7p1R7yTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05D85C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 10:02:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171628574301.19998.1278823226550209997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bbba6dc2edfae9c150d4ec3acb111f8f588ffd464db956fba9aef630a101ad5
Date: Tue, 21 May 2024 10:02:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716285743
