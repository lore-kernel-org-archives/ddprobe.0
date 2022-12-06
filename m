Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B59A928E7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 763B4C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670319054;
	bh=Dw1OD3gt80jNXHXZhXHcHtJG3hkiABRQ5V5KXE63Pmk=;
	h=To:Subject:From:Date:From;
	b=RpdCV8P2mRNfwlHZVJGp/aH9tZgzcBckQQ2WcJpzOlVTN7DnU+lYD95ED8+0KN8CJ
	 MoGD2dYcf5IE3OWmnhkTyHLrSIBS9E7qmtephy80P2Naf0YYOHI9M4r8NSB10KbgD4
	 WUz9KXqHgaB9Xx0wsI8TjRk/PUyzW5Xrm3TGPsb8+WbXDXeNkNR49+r3hzJoZYIDtQ
	 LyYiiFA+YQWIZ3p1uIxTWpoxvQpDjhuf6mRSlzncvuSIbicTuL6l8XrCfM5ddkd/B+
	 56APyHD/m1fAHiXIvPifXja0JtZa0xv7SiH5/o0Bw0+6KIBl7S/i0GkVULc6ljFzjX
	 J80MQE6WbqLqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5732AC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167031905434.13851.5672782798273629457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27da585b0e6a680808760c895ebe960acfcba9e1294c27b723b687669a760d8b
Date: Tue, 06 Dec 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670319054
