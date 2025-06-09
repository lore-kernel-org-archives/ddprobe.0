Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491AE1172A
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749452394; cv=none; b=ki8g6Tkonc6VvVsv/zW5dLNvSTtQYuoaLnoyD56ndS5XgvVI1C39hXPBwo+ZqBrMXbqH00vXZ8LlgJjsuRhya+y2/9EMT/2ZJoSI2A3qGHv0Fcta2iUvMSKh77KY9AcIJB8MdDCaxfJa2hLoYYvWNryP0KaBpQzCSwa12l8jC3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749452394; c=relaxed/simple;
	bh=ce4RQS+Gtzr8XqrFO9FztlI0kJfQMB9eNN6a08V7jME=;
	h=To:Subject:From:Message-Id:Date; b=WTuaR4P8pEeT5V5yjCZTvlWkR8MeOfgi5LM3sX8FacieLmbLqFsuEmi2G9sOhsQY3xATwyz9oSVeF9VHhVPN42zuHiYwLeunOWgZYlNdfWt7XRp+sws0xDNFmoRF2doXk+KWt1zh300AJDRB+IWb7TeAm2xtWF+AeeDu5FdUBdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3fsc3VN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3fsc3VN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BDFC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749452393;
	bh=ce4RQS+Gtzr8XqrFO9FztlI0kJfQMB9eNN6a08V7jME=;
	h=To:Subject:From:Date:From;
	b=b3fsc3VNsrNAhYD0WLAXczJj0RBW/QneMxYt4xPSssXavWbLXI92fRuHT+RdCw/1w
	 +IWTWVsbeGlHoH7SAiOSPzisDRcLeSolgnwWJtTgmVXPZWVIKHjEnPNTcrvOp8KsGc
	 Nrr3zVNWrM7soWiQ2F3Sa8j+JCIESLp7ME/B+JHakZB37b5gC9sErbT25ykUQC9iJ5
	 Qpiz0+8iDgHMdD0qp9CxehXApzW4jRkipT5f+8cohdcUy3nPEkQWBwjmqzn0d+AJM9
	 ltUDxN9XWHmwtq0FPZoveC0HnDKaw8SXLtja3sHc89HunHTIp+Rtd1h4p4XG9fhw0S
	 XW5/MKMh85wWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93173C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174945239357.17315.6158527623794002466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b1bad50c8647e28c79c5613f31e84bd72eafe315671687643c767f91d5e967
Date: Mon, 09 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749452393
