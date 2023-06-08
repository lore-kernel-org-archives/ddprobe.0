Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668EF3B3FA
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 10:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4E21C433EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 10:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686219185;
	bh=qhFfWLLvobG+TWoExDg8EQ6EDluGcCBAHspOmEjWzIE=;
	h=To:Subject:From:Date:From;
	b=pdLCbPcWjZDKHJVePwKeogjVH/Q7OK3aRLfNoGsgCtb9z7uIFQTGlZHVnm5m+SzQO
	 V5sCT5ExL7rek6ihHt/s85IK629MSosFMhlkqVA/lgLQM1oP7xfu9TWTxjYTCwO5g/
	 330XM6+67GbnjSjuiRQ3/AAqMie997j3nC41BcWZGC7wS6B5G92N3+kWRr/z2/l57S
	 +NH2eCgx47odOxHh3p9USXfkQkEGH7rJFZHVaUdFIKGDWNDwzzV6uPZ8aWab7MoI7T
	 E8KOm0AqHsG8J2iJZ9wlM6I8Juabs5qJueXDzy8T0tSz0TQLX0+Qhbn9T+tt2adnD7
	 Rb5LBmIa+bVyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C37FCC7EE23
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 10:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168621918578.21882.12295481202414390035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e857b374b4180af1cc447a21a663cd3cd6707ffbb69bbbf917a782ddb699dd7
Date: Thu, 08 Jun 2023 10:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686219185
