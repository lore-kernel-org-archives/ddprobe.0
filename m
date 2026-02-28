Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BCF280338
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772256894; cv=none; b=JNoyP+Il42wYRmQqL+c68O/GFeg4DHH7ZHH/GmnB5+cWCV6F8n9KGmYo8BSR6vpstfZykQbDLn2Dw61uwy5WQ0sFjEY3C7iJEzLd/i2l5Jsg7EkN5l79bdrcpxdL8YDk+anXnkOGot7mPfx8DaArIRobgrGXG0eZ14y79jU1VX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772256894; c=relaxed/simple;
	bh=EjjRTtkQtxgjcB5F2TSKdwOJIYy03Lq5JUjw2SPpbpo=;
	h=To:Subject:From:Message-Id:Date; b=trMDx/c5P0ZiOUPOj0MYFspV+XAg5tjx3M1+IxHLEW7dSKR2C7Ohesy38AWrdOBQlhFD1w+jV+SBpjWGfiWH4j3ab4MC5s+AdSmtZXLkKlGFCQHYUgjllk1/Czu/P30EYxUviB53VLk1Z9OTDR09baEC1DyPNtSUg04EhTsBqEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQ+bW2LG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQ+bW2LG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ABEC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772256893;
	bh=EjjRTtkQtxgjcB5F2TSKdwOJIYy03Lq5JUjw2SPpbpo=;
	h=To:Subject:From:Date:From;
	b=JQ+bW2LGa7DL0ZRKyrj3Z4FabobkL6A0VCwbwvnzWN9x9GfQpZm+Vp/w4ojslCCZ1
	 jua11SX29BY5+Bkm9U4Ezf8ztavj51M7kPPCFrm1yUQ4ub9WQaZuDwkYNcZSZKeSWu
	 M7Lj33bN+aOa4m6RMr5SWFvik9PEyj8Roo7joYflUpUrimQRNusZPL/kjNAEJqAuqf
	 66FVf5sj0LFVizijugyKRXrJqS7w0YshdAFhvP/UpDfDlvn9eRpBXLfBn5E9XlyglM
	 4q+hBipxpmDWLZiuusCSz+85j8gcdcpRVLfQJ5vWMlE3BqiQNJdbKt63iNTtnCpI4j
	 Xutv3A/5d5mwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEFCFEE4C8
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177225689358.774.2325402628196474623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 441677a50f371657b749673fbf0ca6e4631862f77283823d31a58de2e9c1e4c4
Date: Sat, 28 Feb 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772256893
