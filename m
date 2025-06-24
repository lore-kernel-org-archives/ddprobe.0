Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF53293C7D
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750793394; cv=none; b=JqVqzcyr8/URw3i+E0XhcplHLAtFYGGC+ZuTXLr9T6PqPfiCJW9QpjwaccxbK2A4pua4DCdcvvXZZ6VLaZXMsCAib4cINFBkgbs1tPZPnpzSEy2Jm8iU1qQatNAzvyfQfayuKHkJ75BvBKW9r6VOLtB7wPUwFwwagm3KL7j+jyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750793394; c=relaxed/simple;
	bh=mMY91X4KdCAG948FJvaWCO89qNmH/weHKbxR+fweSaU=;
	h=To:Subject:From:Message-Id:Date; b=cr6nyYoBt1GJJ8lW3lpU+NTHYY2xWu55pOpm6dg37c2U1N2lpf3/5kkruh378jR5yH0mmqeLH3pcjDAm9O/GSOO18cjhVOzQzKacmunXTHIgu7ixfDaGex2qmz+Dj539Hk6cjmo/3pVk1ljJOTp3d95n8m8PNNjxCGfDAn6LCDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6XkrJQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6XkrJQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00F8C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750793393;
	bh=mMY91X4KdCAG948FJvaWCO89qNmH/weHKbxR+fweSaU=;
	h=To:Subject:From:Date:From;
	b=q6XkrJQSIQ2DvfY/tUcVmrd8KUJtMzHbb2NnpwHHVzj9JhDr3na+DAaEciQErbLY1
	 AkoAMqjT33m6NlAZl0roD8ogof7VQQncu7wGu8r+6XSvXZoJfgsEXf8R5H5Nn7fK2F
	 ZKINM38xxFVg6GdbTvxkQKqJXEaExBrV8hKU6canzz+HlpdiwLU2FIOqZfnyuEGEre
	 xv26PMlmSspNV+T+oxXyzHGLii+zf+5j0yiminxZyBrpSZdsDD57VN2RoFxnJ6ZmqZ
	 xzHN8lQ4tVtNSLLfOO1FuMJZlei5lLrdd5r6kGTB5TQTJAwC9wOHRtUXhK1UofnB6V
	 8DgrerpfUdDqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F878C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175079339357.26346.1051655671228193061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d00e04ee127476ce44ade2902d2e80b3a65146607131039091e6f3c33499796f
Date: Tue, 24 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750793393
