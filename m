Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DE21D619F
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748240994; cv=none; b=iZoBIqLWMVatYY1h8jPzmEzDcjmN9m1MYM8c85/w+Cmt7lSVgbfVXIIQ1/K27fRhHGjSqI6j7prgB4OqsvMsjfhireeJ2af7+yKU+72A/Vxkl8/CctsbB15x+3L/DNP8jgGKkhLPJgt9QEytT0Mr/9nMbANhafnz+Pj7QTi5Fdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748240994; c=relaxed/simple;
	bh=Di4Et0yaM95LKdCmMHEuBdlmc7vVyauTSYm1gBv4iVk=;
	h=To:Subject:From:Message-Id:Date; b=Aac07I5Z+CmrxlbXuH4uVbWVEa57EkYwQiOGm2tT686HeTtpJWmzaNtK+YjucLFG+qrTecG5eE+TVWgGZaGFvhpHXUAz0UJXcq9VlJlndAS+P5yK5L1PNCcNB01pVJ+HME/KAJmZAyhZ9lgnSHlhYc0mQvbUNcEHD+LMqLblmi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7dt4PNg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7dt4PNg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75D7C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748240993;
	bh=Di4Et0yaM95LKdCmMHEuBdlmc7vVyauTSYm1gBv4iVk=;
	h=To:Subject:From:Date:From;
	b=b7dt4PNgFgpwiUJ7oXB4dVWHlDGlZM6TcjtKEO5YmPMSv1XaqsqqSk9AcnDuktIfy
	 6zYMFuN8qX9kDtQTLQYC3u7O9aCB3/MamUOLHYa2J591UV5BPhOCuBGezbMMJkRgSr
	 1iYSvvUJRbVS8YXXTfdTBFJaHw2x4JJC84jzB6l436sPedfWv+zcPHUur+X7Ctks6s
	 YtuYoq8NSFGERRkIIShLvNwYBhOGqOZajv7g/3x+xLkplDVKQ94WM4ShuN8085bjol
	 WdIdUiXOquO5PFXL//c8Vt6lPApm5iFPYDGcTludn2vkO3RRmkLjq+DxuAwGbq9Yl9
	 W6L+KSwc710gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F58AC5B542
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174824099357.19780.13685414056416859913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9af3b9300d53d4888210e42cccb7729299b0476cec79b574fd0410275117eda
Date: Mon, 26 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748240993
