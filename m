Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA49623C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98830C433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673335287;
	bh=YX7mH1OiW+wzTEECpZC2fj0Yh4xkJTEezCJ2kR36mNA=;
	h=To:Subject:From:Date:From;
	b=KjFKNPEHpze+LC5cn0Ey2GSfythySdaG5+UUFm3Il+XVQv1czqwigERN5Y3cJ2/hh
	 NhcGSQio8QEifHUv7x795wHNmgyh19mU9XNqZqqTqSc7ntDe898t/XBgbTQSpvBWga
	 zawRzbmhx8NKgNCX9zA9XM3jfI/tw2znckdoYLd2qxbKRBS9dcKSIlPSe2l7bDcmyk
	 N22PC224UlXaJNp7VrwvGYfcfdwXPoKNUJx+x5uum4OJd4SnPE/6BRujjj4Ynhomw5
	 VXcfTW2CRXhqoQ0ABDXWx14IudttU4oc1PO1eMpFzpTTzmJyvrXYscbgnFkwvnSPv1
	 DOl/H6cwjVf+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71C06C54EBE
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167333528745.3786.14369221496889161784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c28e8300a6495c6633b996ed5c4d5031b6ff0d5c0bf41fa2aaafcd0e73059c12
Date: Tue, 10 Jan 2023 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673335287
