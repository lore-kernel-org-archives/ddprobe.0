Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3893325E44B
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747088394; cv=none; b=GFYn+J+Jf5TRwHwgBSJSFVnxX8pXdkW4G9gz5pC5HCmV6eeEjkUYGHrpdxKt0GE/xObfY+CJ6uq01RA9lZETNuspd66QZqPqdNmzgGIGJ/pO9Ym655cACutgUHDJNF1WFn8l0tQ9FCR2nI34QWQKr+wdnkP+RuS7+iEqewGxPFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747088394; c=relaxed/simple;
	bh=o1B26ayl68XaMGLv+NlqZw3JRKSLB15tA3W+46KcqMo=;
	h=To:Subject:From:Message-Id:Date; b=cvJj37AhUjnOC5gGGH38qB7fpHJkN5xHI9/izMp3bPyJl4Cp+N8EO7m9TvI0NI1r6BTNLnbdtzDRuhR5MGLTOV96SoMG5To/hyWHzD/46GvCEh0f6+nteAzrGHNY5s5huX3GsYBEFZLfHHPKLMhf0gxQIa/78u0XymcSyuFTkj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/nI2FlV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/nI2FlV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FAFC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747088393;
	bh=o1B26ayl68XaMGLv+NlqZw3JRKSLB15tA3W+46KcqMo=;
	h=To:Subject:From:Date:From;
	b=t/nI2FlVyxWTRUHQY4cqYfhDI3iImQM/GcXbfy3AvbZmL/GYx0TYMIle6nhk824Y4
	 szJcI04di8UM9k1j9o4oYXpWqprmBgcMM352eo3RD65tIZ5UE+PmQW/QlZEFD8FE9c
	 lPtq5balAUELpBIiqAmfqtMWbVlkCxBTyMktC2f8v0Goxl64VMdQYUoApNso+iMbU6
	 A41gJ2Xybp1OjjwwKBUPGT1uq9wZTpTXDEW4dQ7AqoDFxw/aGrpLIIUF2/An8J/XZh
	 4o32O9IBsShGwmnNrt9rkTjJPVikdKndHr8c3FsVTXVlaFAxYx43xT1yaBI70MosDI
	 vhjjUMKBAo/aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AC9C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174708839358.2645.291076419201196175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 353dbc59eb310aa3e3374bd313c40fb1aa70a96421793243542afdff61eef230
Date: Mon, 12 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747088393
