Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8A1127726
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743416394; cv=none; b=oy6CCBva7L/RBITrXOqAfqUdlktcRddOXqrWArg+gcttxd7R2qFtaR5N53ya5arsKLqRx575RPAhoOZFpZ8qBe0vbVTCKbKuEkHJB306Rh8HtspW/hLLGcn+DLyIIq43f/Ax4RoA6U4ZP33E6u+7dzAoUzE7vlEu+F5mnVEbKao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743416394; c=relaxed/simple;
	bh=NxoE8f6enUxUlsAZIrjC0xmyrItn7Qmqfzj/zZTrLRY=;
	h=To:Subject:From:Message-Id:Date; b=JtnuSucCzmklKLSVSOteu1s02MTDgUDciaSjS9m7/QzFNx4g/JZF/W0SZCdbYNV9cI6RePs9maksdFl2vX/kG7LUHWJy0Gyl0s+Vmdzhka0pCxDkYqBdkS2hR3A2SCG4/kDi42WSssG/TKfcJbPb+2GWJyt9PtMwnzmNbxaIvWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqBAl8TU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqBAl8TU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C934AC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743416393;
	bh=NxoE8f6enUxUlsAZIrjC0xmyrItn7Qmqfzj/zZTrLRY=;
	h=To:Subject:From:Date:From;
	b=BqBAl8TULj3y90E8U/GgvzM5D2ylmxMwxpnU+QayPQR553Q+JiJFYSNBnFWckBeeR
	 GW2GG4kT4ntuZdjLUB8hNQ6VYlnD/VnX4/QWXU59K3YjuUnyFNt5nW9CIhuJMSOPXp
	 IT6HRKeQ3QIMtBzOJWI8ZhXdtoLjXybLTdoEZsL7O519C6C/l7EUSQK4CYXVx6IsPU
	 e+LqNNqHxAzgL2Wl7aYF1kePdqCH3KjVEmQb1wH6hSMGV408aQVg4lKF7FB8HRZql3
	 BRUBl/9Sqai6mfJLYz9i5i6Lzj/cEs9U7uhm0ebcj5+aVptdEU5pFvMpaguLHXF+FN
	 3g3A0BQSvjxaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ACCC3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174341639364.3123.7355343380619055188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e08241b9b6167dd5061582a1da08b4e369626ee92cfb8aaafd43a4633983e93
Date: Mon, 31 Mar 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743416393
