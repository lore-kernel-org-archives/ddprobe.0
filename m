Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC98C210F3
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUGxxDET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 795B6C433C9
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703069296;
	bh=Z1wTdCOMbuHUYLHyj30sB6wVTXXLcLyJr8Zi9WuPPFs=;
	h=To:Subject:From:Date:From;
	b=XUGxxDETI43J99vaq8Nlpnstt33Mb+pusDGjhsf5bb+s1BMlzYmOdBtqB3aPAgK/f
	 Sho9u586AUFuS3gSOlq49ovjGJZn/Sic7s9jw+R3nqdw3hC9s/Cgx2JP7/D2qfAzVx
	 c6XG0XFkq+SovzbILDatemLZTJm5QsH4DtRHdz91rtjeSbyamMmN6StXscy80Mkpav
	 yu5b5y53UcnXP+gErJ0TwMS6048RAPtUADpTAnPHQ0zEV6W1bQ688dxJqLCn5/Xfnl
	 KopJtB5akPdlZ3BvUwUkdpnddDZ4R+4/+UPojGczWGfpH4sWJVXcifYYhvbEiFAxxt
	 g40/d4UacxSVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E06C3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170306929637.4529.17326069047779042999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63032c760aeff81b0a06595dbdb815c25e57917d93a075d6ec27a04f35d5eb39
Date: Wed, 20 Dec 2023 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703069296
