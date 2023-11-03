Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2318C14F9F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJqZxYfa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E03C433C7
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699010896;
	bh=PAYkT/h3myEBlZOqyZyEpC1+HN2b44ItirbGnog4ZLg=;
	h=To:Subject:From:Date:From;
	b=rJqZxYfa/hDDeUztp6h8LSem4aZskmbfGXAK4bbIndCoBbQd1Wwc849HykF9wx55l
	 hqqlcuNVnCZsR2Bpxy8SC8f5HWPCuEbmIjPoqE5mbiIrM6E5y/vzEtYw6jNFonko80
	 s1PmZXfrCKvuRUijMf6vWQveY1CV9Pwa86ezMAZaH3RthALrZBgokxuvrmQHOTxjVu
	 fRZjlkgbQyvzw0O00IQufEv8Vcw+xfawy/dwmcyb/euc9Ax0Equ2+5k/S9chjj1c2F
	 aA5V/fTZzwyapXfwP11iZY8iYRjNEjrylwKYuzKzsEZBg1hWUs+wulEKAhGno+WsRP
	 8AWgVnMtCeU6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D094C4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169901089637.9753.8317745936213293402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c6f9e50157850f1c5b412fb8ac7bf12f2e853937fe3399ec8c7599729f56d4
Date: Fri, 03 Nov 2023 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699010896
