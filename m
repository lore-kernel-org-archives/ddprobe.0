Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D002C0294
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 06:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786429234; cv=none; b=YxH3Cg9EeRdefC5NnaUtxbn77wdvqaROqwL0yVc1cPOHLSgv99TyhSU7xgTbDO9yEmhIZ+Irgms4q9+k/xuERJ4tZVypOQK6qD6Otibf16Gm36Pa5VEk+OCpj96c10GE6C6MXaGqBDPx2z11jYm8FoR7z7qWUGx7nOtk0zjS7yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786429234; c=relaxed/simple;
	bh=KpUg348oWLTh+FNAYotjRQZmT+0jW/uJJbRVtypsEzY=;
	h=To:Subject:From:Message-Id:Date; b=RvhTDKWCPp6irDddq9RHiH9inl8H4PfHYtfVVBTDS/mN3MDqa7UVV28F56T+qc/OMZ3T0uOJ9mm38qx7SV9Mfc0MSa3wHCXPN/3Xaqjg/rjsOZxH4TmZOWaUbg0Hn9+o55b2UNtI/wnS4ORMdJAujmjVveAQFoX8Hh2ywbPjKLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VL1HribT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VL1HribT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF891C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786429233;
	bh=KpUg348oWLTh+FNAYotjRQZmT+0jW/uJJbRVtypsEzY=;
	h=To:Subject:From:Date:From;
	b=VL1HribTEgtkrH9qJ7uiPH8bCESEGNoA/nIOIqTWm4TjNRulDi6MbT+vGUHo/Jtlm
	 ischwmn5gtl3bUuuaJR6bmCI8zmPDIvywra6p26PWcDwLGre4DUGiXmxBIO6a+D1Dr
	 qzZ0GMZIo6gBZdnC4EZ5blCvKXmVC9nobecuKEqRT/gpx1B+p62WRuMt6bq12v+4+Z
	 Wr1ovo8pRPzEWcd6WIofwiAU8f0uxmVzwBbM9sdvrBJqWNyhwCS/DPe92hbKb2x2Ga
	 270nrT5gz/bq1Kj/sSYD5zDKyqjBc/fdENqtFpZmpmp53Yijsrf+jpPuioduiyr4zt
	 hxMhP7xNyWaQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F5DC5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178642923368.20396.15282742208874126425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df02a7601d68e30e55f3e02fa8830025e9077f909953f3e0b80bc70ce98d2674
Date: Tue, 11 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786429233
