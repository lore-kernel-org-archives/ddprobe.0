Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4238B3B637F
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 21:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784670514; cv=none; b=bfL6UnSuWAdkxppRQZLRLaXZ3rBI5UZEZZaBETrRzby3xRoOZ79l5Xw4bqFl4rbMfs7TPB7xOAvhLH6SMXunCVGfNIQcjEDeAwqJEZsyCSPqntUTt1XMDmdhwDPz+W5Idf8d8AzOCLzi07Wd/yqlT1q1Le6MPJstIRhiKjR2vOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784670514; c=relaxed/simple;
	bh=QQN46REi1RBDgD4Py3gLU2WY2BftF5jZFyWuf9Xbe/w=;
	h=To:Subject:From:Message-Id:Date; b=U2ZgI1gfkzFpZHcFDQdW4c3irAYCBJzcVAy9f2x1RTR8dnQvY9DAySAxkGiarxu+wCBXJek7gRH3xLkpMiYuDwouATpNyiJJczzE7+bjuIhAMwQcuHbp+WjrE9u87U0nOct1SuoiGAtt0qwQiLOn0Q6pSgjcmJ7KTCXxFnLv5PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8ZsiUdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8ZsiUdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12A0C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784670513;
	bh=QQN46REi1RBDgD4Py3gLU2WY2BftF5jZFyWuf9Xbe/w=;
	h=To:Subject:From:Date:From;
	b=b8ZsiUdGOO+q7eZ/6JA/ko9P/mdh0p2Q6lniYnWsmpKWOxGnwp9XI36o34vNTyoTI
	 Nhawkv/KugglO6NH8K4w8YwCa9I3V5Bpsm4vFANLXXXWgh9K5tOrX0mhnvwOlIqNCo
	 wOPLkZAM2JpLN9cUVlS7PQT+StAeb5+ZLBHRTM9fv+2ZoBou9Z4FD1THX/+jtsB0UG
	 7vT5fLEm1iQ84qbUsCJ14k2l5b2Uy5Py5jsN0zt5gdb5RYlhpE+OZ95/6yaonW0P8u
	 6k4icHttYgrXGi650lGZjx2SpPwAxZOY35wtpvgDLJvhWMGeR8wEcOQfQbtrqIYPU7
	 MmW9REKj6RLYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB090C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178467051369.6767.778963257899070333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b061fd4fa3e8ea37f5ef188079012f2d7920fc8a1ebd58028a0f6340abda3f51
Date: Tue, 21 Jul 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784670513
