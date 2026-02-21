Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FB232AAD1
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771659894; cv=none; b=D1rkrc0XnY0gVuwfiVb0uDKVN8GoQqTG25wX+yBiEZQxzhsBp5NqzTJGczRbqxtvM6X+/szzYhD/ZNZgnfujvnyqpWtTIkmF2X2nIm51pYlff5ZLI0MCXJgjlYN7H7tw5ylDNI6x49U4mKoMrV297CDJlrKAsKxiKWtRbDCxJPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771659894; c=relaxed/simple;
	bh=A5WqD+xkzHARd1eP4cw8Fz3yfrbGX4o2cHmkPb4XI/I=;
	h=To:Subject:From:Message-Id:Date; b=I9U0Fmcdpc0KDXu3syvaxobfDd33KBVPCFjCbZ88r7Dx/6VPdLzDib+cRWhv1F/LflDYWbNApsy9kESN+8C0dMO+Tm4y1MbqNcN0fvJNttTZaM31GPLF91nYLzLd2UdmwTc7rSVxNMzEUQZ7LjTvBeeuNkN1ubUs9fnTOri9sY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fnCybkv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fnCybkv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A981CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771659893;
	bh=A5WqD+xkzHARd1eP4cw8Fz3yfrbGX4o2cHmkPb4XI/I=;
	h=To:Subject:From:Date:From;
	b=fnCybkv7sEVyNZ6LMiMLCsGoCaxQp7EBsH9GNXnG0L4VdiPDaYxxGTm1Y70UwIHwB
	 M9RxduvT2MWmKJSyOuKf0m2+oxSdhpNF2PyGSm/kiNDUQzVmPS5N+DIrOnkn33zGMQ
	 rauPK49Mn3NB6/ASCOrOWmB8OAr1Q+aq/WC7FVyQTRw2TCBU4aEPLPZF3iBmeiVXXS
	 y6AC1sYbuwmuBRQHgiKD4y4KWKgXjztdf78O6d3Ll0MjNADankR+rDWeohSI8VjP7e
	 xzcL+nH+n3np3EG4AfP7fYzuKGvrigFsclfhzHlC9J6a3CjUCDcnvAUyJ1az6njIoU
	 w0EXp+eLVuayw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96410C61DC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177165989358.1106.7438070970645689352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10907781d0ba1f203bcafe161bb489f774f132e87dd63f3447998ac458e090cd
Date: Sat, 21 Feb 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771659893
