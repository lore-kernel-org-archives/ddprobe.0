Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477B334040A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786480234; cv=none; b=r9VajKi7EnAaUi1P3EQzh2DSpCoiMZXfCJKa/bG56KLWcGRy+3kO5ewGSEescMtXY7jhfy0xrTe1ElPfrcrxDchJRe30orKOCRhhdCPI8b0uZCXWvOa9TaTm7o0jg3Agv/BoI/5aR7NYYZ9BBNqx1x1bPZYPeUmMBf+L/Uzc/+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786480234; c=relaxed/simple;
	bh=g/hGd8dBwGuvgq7j1znFUbg5Hp5mtHtNaFvAg5TI5Go=;
	h=To:Subject:From:Message-Id:Date; b=gsur0B79lht8XuwZTNhfc9c9qZwNMqCJ919lWAg5rIuj1O0NDjlEclu0E5teJUHwvyaT/RXDg9Mb3dfTGrg+sG+tEnbdoI1XfDwqqVsd9nDa9WYHhORmomdQ+whCctv9yoNgEhn8PWJK7Czy7uC0qP6bOZbbXUne6Wr6RCEFJtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQRdtGY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQRdtGY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEDBC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786480233;
	bh=g/hGd8dBwGuvgq7j1znFUbg5Hp5mtHtNaFvAg5TI5Go=;
	h=To:Subject:From:Date:From;
	b=ZQRdtGY17yyR5eRGf8i+iemWtLZRUxKomAZKh4Gp81mREwfA4ASi6v29CD7+xPpwG
	 tWoSdTRyQbhxik4ZfguG6Hfu1BowJcuPSbDJ8GGekFeL9ho6lJXeUeTl/PNyzYYZG/
	 SYyuQxvHjQW5NW+LwYhmNet3TDArpQNfjbf2+cX0lOBIrlWcVZZpockL4Tio2jZT2X
	 AstLpnGcvKRJFXv8B/divpjb4Ckttbc0leOM0uI9To8fgzQOiV10Zv6xgRD0xbOnsE
	 qL+NMwy61lpkxLqIwz3iqQCBMm16aIDPcpLL7DHXtKdP0KFHKTM+FTbI+TXdyqXiKi
	 g6lbfjhyzjFHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA51AC5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178648023369.6951.12462943954419969746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30bdc11cbb1d6f952db216f9fb903f4dbb9db16670045982163ba657d886b2eb
Date: Tue, 11 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786480233
