Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474821CD1E4
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763222394; cv=none; b=OjQM+bSeJbCTTD2D5H2gNuGPoeXr0KSGiZHFW3fKMkNnm05IOBBMX04+MfoV9UH/xJSZJZgXHc4u+4v4tK01epDG5EchUCJYm+vcPolPwXDA8uODqVQDrbGrDo/26EIIncKxWbLTY0b3Qw5pq2pJ7nBrodATtOLuPepvt0UFjYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763222394; c=relaxed/simple;
	bh=QY1yIPFvwz9EUqV9aUmeNAqzzZ+KrhgZf9ezFLgxuyc=;
	h=To:Subject:From:Message-Id:Date; b=UMZAp7MFy4jWqhATqX+fxWMgiis3nImGlG2od73sOg8HIX08fYDf27k1tz53s4iSk4LG9c4JBLe8QMY1ffvjvGQb4hxmhteQY/+9LV7m3eiHG2675XB+ljtbohU7vuo5zq9F7sZJfzbj4OBmVSS7CK/7mGFbl7YfrwrYn+l8BGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Khzwe9E3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Khzwe9E3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3B8C19423
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763222393;
	bh=QY1yIPFvwz9EUqV9aUmeNAqzzZ+KrhgZf9ezFLgxuyc=;
	h=To:Subject:From:Date:From;
	b=Khzwe9E3Ehzo4a93j1ntgFkuYcLKiHP5BEp6EA0y5ImiyhucofV1rbcZpnNrmSyt1
	 eRm7RaXto3mVK6WXCTCm3ed0l/xYD8/IHqhE29f3EgyKP82pr2L/T0+B6EUNJAuxk7
	 h1xM5LHctB5iJh7POf2jFQpbNHMwfRbTMihTr+wGmppZ68k2c2kFBYar02cKP/npTb
	 xMUpWzuuRaGASFg0zPVPnRapjhtHVyVoRraKP2qRQTb9GvreLc8ZN+yh/dBtBjl1a7
	 nG1QEf6PJFuwEYZBPoIKndn4wX6Yg3xe0xQHpM5crDIA/sQOCPLnWb7+PGFkzy8xgP
	 tZEG1c/qUaX3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F30BCEB2DA
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176322239361.12713.14888869554644785261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0523ef1cb006aaedf6abd4fd1d53725ed0269f34093d9cf5e2057914b3ee2860
Date: Sat, 15 Nov 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763222393
