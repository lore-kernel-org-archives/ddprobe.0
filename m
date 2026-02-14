Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E443A1CD
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771028694; cv=none; b=OmNi2a/pJH30L06v40gCxTSGl+iCY2A2DlYA6+gKNivK7LNk1Qv6tK2h7cQ/6eDEuyKK66PwlAoUhzmQw7VA4uiTaxHRlXHsVj9wTz/4ZD5FTSxcF6DrYJLTlfrrFHCJSnO2x7nOLU0tIPiVqiqNgaTWh3PeRSpN/YsdvyKxT+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771028694; c=relaxed/simple;
	bh=j7GHY0PH5Dm2lRtkQVotcAom5gfh0dn0jmzGDkWDtCw=;
	h=To:Subject:From:Message-Id:Date; b=uyQFp6DJe/6eoOucDygiOeu6RS43suALq2IaLPAywFdYLw9hm0uqvgHZd9K+6MMlu4ShN5kk1UXtFyTYRWEl1r0jrbOGwqDBQh0limFioGfRntTqEjY0MChVR0Jrzy/+r+DREsN20ul2aXwMFMIrlvo/V5hWL8k5ZvGC4NPIJto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVrjfLlb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVrjfLlb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B153EC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771028693;
	bh=j7GHY0PH5Dm2lRtkQVotcAom5gfh0dn0jmzGDkWDtCw=;
	h=To:Subject:From:Date:From;
	b=pVrjfLlbbZCFgCtYOmrxZPS7ecPOqJkUEZn/LkToWFuuThTlKxWrcivZofav1Iucu
	 88erZpsCQePmNYnV51L0a0KP5fmaBWbHkwxeJ95zFp3Mcjnlxv9dS4vOtqFl9xiNsO
	 UczBBJ0di+ebSa7JeAzR5cLUGkqHNq/D3KAUIqHaVfk1xE9RtgqVUOYnpT9TJBb4ob
	 Oa19Hw4EeL5w8Z78anjQa/4mhOzyncH8DY57th4RJAQto/cdKAaOvnF9+nBNgogMeI
	 49sjHbUViCTzuS0DyvHFI0aChlxogZnJfDAwtDakFvH12YmVU/6lS24AyCdPIaWx1k
	 0SMdHRsXbU8Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E93CEF99EA
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177102869364.26544.5566559599033929421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2647b28439d778916173a71c435c16ea8385a55775bd9bc5cfa927afe895288b
Date: Sat, 14 Feb 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771028693
