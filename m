Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F5A182CC
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZaF6m35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 872BBC433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702633096;
	bh=FTTYfV7JBdLgAioYwpIhMR++sB2Db3ze05lIANR7spc=;
	h=To:Subject:From:Date:From;
	b=hZaF6m35jKA08mTdaIl6Z9oT62Ges8p4OReyl89hYUCZUG8dXCUSdywgz0A1uh6jf
	 I/XB7Yu2k1zB1yTC/SDipZH+B/X8hIDCxwBKFYeJ16KGv5z327NvnJEXwv0Y+SLFzv
	 JzuVIeTPtktiVkExK/k9LVB7TcuJ0LnJhpXhp25YUh72pMD1TcuQi95atVIEFsjjz6
	 Sd6/KPQUREmn3niyNjKgSpfi3t0n8XutLNR85cP/8BVPiTtmZeoCoQA+r5xM8DHNSH
	 5zN+vMUAA144570jt5/rX8bUutaKIFPm4daMcHt/fha9rTIIAA6E6PVYDpOyP+iQYD
	 f89DQREHKIvAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66D28C4167B
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170263309641.14558.4051105130166424718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 582509561092960a802b66d8e5d90a50d3b3c7ca92527199dff8c28c27529919
Date: Fri, 15 Dec 2023 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702633096
