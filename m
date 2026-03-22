Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210FD79CD
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774137894; cv=none; b=SxpCIFDFqum8kIep4jqkXn7L/eY3j0yZ7AOxFiXzPJfUCSSjTrbd9KhZss8BnHg2/v5Bkx5Uw1rcoA62FqoZHQxcJmeBjCYqkzHzNmlvAwd8Z26RXDDfsNJRtDOGG0KWRl3qwwT8hLjabz4rr6smh4ETxeZ1ZfIE8WcJrTw7Wjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774137894; c=relaxed/simple;
	bh=jtkwOhBb8kTTXyqO7xLmE2d6JRv2PrhT4iCQVTiJ09U=;
	h=To:Subject:From:Message-Id:Date; b=pW+BWURCpJSxEQOacz8/7oLRNSrHIBJ/IJ1EoXZ1ZOgAAsM0FQy3c6wI5gWAHwzNarJvQ17f4cfspsVjCJmNejLGW4LvbG98pN00mSpCXOR2jXe+62leodRibkUKk8JbGrNsM7DIi+Tqr3wFrW5AntkQ1SJfkuuBWRdv7PFehCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXUbKPse; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXUbKPse"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A188CC19421
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774137893;
	bh=jtkwOhBb8kTTXyqO7xLmE2d6JRv2PrhT4iCQVTiJ09U=;
	h=To:Subject:From:Date:From;
	b=bXUbKPseDLsyoXcSFeLFvKlvXClgSDzucdsLfBabfKVDGBbTR5HKUMldBnmzoecfX
	 MX9YccIivMtWmXVZY5XOsdxheIeBYxHrzyb0wrdrowg6nZ2R5QFUrtgvBcBpF5xV2k
	 0xO3OdYn6QTSSXdcEKVkBrozvbg9qH/hLV+tEFl35FHPLtR+QHQu/CqLbZu0/bc9yG
	 ay2mjt5HUTAUDAPlHDGjBrskPVTh3051jMOXgGPyMtt8C/yEfuLdQ2yfuOKG/QGXpD
	 Dz2K6gO9ddMiiE73O8qKN6at6/tWXYn4pKZGOI7n9ofG6nw/DIVRX7IhvbVdbcwyt1
	 K12G50/WqiexQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FF7109448C
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177413789357.8174.315682608608083589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4bcd22bae739d5b037812704cc27b16b2339e8799809ec9e2cc8730a45f68ec
Date: Sun, 22 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774137893
