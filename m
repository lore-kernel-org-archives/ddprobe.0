Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E82CF41C308
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776691654; cv=none; b=k2GckX+IJuow7pNMIU8KRin7rqnlAOE4f2lTBOEgFWYRIlLfUcOBPdKCMa4kV1+A06BCGbZ3WubuJQD0SwzfLSoo/FhD81ClcRlE5rhOFKwpQ2nVJDnGktR0HMeHwwWRJ5rhLwQLYQThNS2NmtkaOaNhVq+cbtUsPj3KxlY8lcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776691654; c=relaxed/simple;
	bh=lLTMZYu/rQRD/CLSj9gTJNVUJa8/+iOlXQFCxh5HiyA=;
	h=To:Subject:From:Message-Id:Date; b=ekx0HAFOkn/8hBvpTF2CHoiudc8D8lcEwEpnIiLswfuMNhESKbFNk4bxlEzEDiGL0FXqiys8mC4J6XlV3zd8+0siI6NWdDfLtLdeJhNJWJCtxSxIVOXJ7X2ynNEQIstsC71be85X0XjZD/avnEILK0xShVTtfgSPkpLoSUdGIcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fp9SIWNU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fp9SIWNU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9ACDC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776691653;
	bh=lLTMZYu/rQRD/CLSj9gTJNVUJa8/+iOlXQFCxh5HiyA=;
	h=To:Subject:From:Date:From;
	b=Fp9SIWNUCQrdcDxsPTcoPKDskhPOVn9k+liQgcZdb/E9LALKk1MuwvoXNTKad5kFT
	 2LQQv+FEImy4o7D94f0Jr/Mt4Ad9jfloltX8jFUGcryY7nIjDjaSScTHfALqlzf7P3
	 vHwQo8V4NP8I/NaN0kIkqcuzZBwYRcVCkg1DbhZq5RRO0NSeXm21RoJ3OjjvU47EnK
	 jD7d5zt7d/H3LtZUWYYt7Nv4vlzctsQLibIJqbQN+8eElgBUlBroI53PkmZO2t+pDN
	 059Y1kgSM9BL7W1d7yDYomEgUqKgaVxZR15d4JDuMCK3Q/D0PbdLeszcEh/jXC2QNU
	 W4nOBgyZBXPwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB745F588C2
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177669165375.31644.14007592766000502855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bf976a686d88ed48eaf3489889d9adfb3513f380fca1e7c536897ada03e6b58
Date: Mon, 20 Apr 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776691653
