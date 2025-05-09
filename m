Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD16274642
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746793194; cv=none; b=Zbw2Y9R2hoJph7uVLxqNxKhFV4vcY6v9HDdemQuuXYGCl3qt+J4/56k05KIOjHWUkHSNHUSuR8A99h+KPjZAWxVCZ0AoWoFaoG5T4d8y4I/y/515a3BdEbpnLXQ9PpWmfM8TYh0Jic3hcbcw1WI1gQIIWN3deqJHxZxi/3DDILU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746793194; c=relaxed/simple;
	bh=z+tFOdk0hObA7F0QpLAvA1QLuZf6RNODlFQPMhlsUJQ=;
	h=To:Subject:From:Message-Id:Date; b=mqpwF58G7ceu/PlhfxJGc+Yt9dezsuhPlMrY7iPfMcaZhzHOolkMqUWC2pAGm3piYPVpEaLaJF3++8K2KAuGdywaA4xRQlY/P9KzuV0FaryFhvaoN5AVE/BrJKr1s/mV06WxI/GL8hQF4cCPtBokFgYgpMP8VY0AsNnj/vZfjoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYJJjfAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYJJjfAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDFEC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746793193;
	bh=z+tFOdk0hObA7F0QpLAvA1QLuZf6RNODlFQPMhlsUJQ=;
	h=To:Subject:From:Date:From;
	b=XYJJjfAjslIe3B7jQums6ST1vQwF/efQbHQfIIw5wLABY3hluI08aBuiOWIBD2mxB
	 pqPNBVLBdjwRLp2woIUzWdStaUyvG78cJ0hSbIYRyj6y55cUSuekmGpZdlT0x+RtB1
	 1Wl/o1wgx2UONzEzzNAwQ/WuXfr52XNQR3+Oq11vTxAhhyOaluMoidP7rexK5f6MUP
	 SxMbWiNoIclq6/moDzZ7hXkB3sH0GpFKIG0MMopZM7cW3mIXrknxaYvFTTnOrr5og1
	 gcnoKlYRSGNgCB26EtCbPNQR3vNERwHkmo2sw1MEDOaD97jBG9WjwPgepJo3WEq77G
	 q6A4vRv4ctVtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E841C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174679319357.8159.3719327341685222496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ccdd7b8b4ba27557d4090a09965defa6785aa108f08a3893bb15c9aaa40250
Date: Fri, 09 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746793193
