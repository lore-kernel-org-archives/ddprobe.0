Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517491E47AE
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743191994; cv=none; b=Xl0jsqJQOr0WCEILDw9Qrs2oLTGpy5yN6a1DR2o1pj/jM17qGm+6AO4GQdHMoxiW/dXBy7l7NUULZ9+37+jNydydbAuy2S68GOYXgeaWdITvHhEGJ6afZgq8P6aIHhxD3THqPMoCgv9NDvRdN8vXBngjfcfDgwpymg+SnzQxrgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743191994; c=relaxed/simple;
	bh=0SfRzh0dzxN71Db+cnOj9M3bPjXm12IJFGuy1Pqlw7M=;
	h=To:Subject:From:Message-Id:Date; b=MyK0nRP8CiI6J+vFRCZrbAEEJm2d/pLL9eO3GaXQlpNYSmmQSgRQQ8ePENnFhHsQxrqesRfbg4+aeBU9tnv9X81fkKxJrdVOKCHJwJgS4u8d98iDu6kbmc7omq9DrRGx32fYMqeUDL4Y40A+7UUWD6gcZCBAIEEWgtf8RzMf6OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDpmbaNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDpmbaNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3C2C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743191993;
	bh=0SfRzh0dzxN71Db+cnOj9M3bPjXm12IJFGuy1Pqlw7M=;
	h=To:Subject:From:Date:From;
	b=ZDpmbaNYsiFa2N8PpqQ8+NVe6JoLTHCAZS0x02cQnP4lfAKVtNrdKM5SGfPnWdBuW
	 WAJ70Q6gcTw97I2Y+ji0SKoVgEdT9J8J6LsBWP2SwUkiwNRIKlab4Z7MsFbF8S6dDX
	 t5pjbVZsZAnLv0kbtMkg74pKhggZYE6Mu1dmSA9LkPgHOHofcXjrB1LbxEzJvzTLmB
	 bOHq7cyNsX7/ELQ11G0ZfYoiN/U/XD/AA3y7YvrFcLa0xgcpAcSGSXg0oJ3iF+Opca
	 Ufe2uoGUPEfjlPXTc3+bsmC980SfWzFvnGx8lR1WPKpxxNRG8CLtmoDydBBKH6FwQe
	 U0ORXmvszE4Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97272C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174319199358.13017.9912469141302857028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be67d8286b180a41b83149e2eb492ec5b0505616a4a2cd412eb71ca3e6e2962c
Date: Fri, 28 Mar 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743191993
