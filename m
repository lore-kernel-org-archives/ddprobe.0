Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9978F77
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83990C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672783887;
	bh=h6LSD4IM/OFGi9XYpppJ9t9r8FN/ERXuFAdii6odAy0=;
	h=To:Subject:From:Date:From;
	b=V3k/saCHMvrScxttHrC8WI3oDDr8owLXBw1XWxd8Jbi2gUAbF7EeHhfJhi4iMXCom
	 qPRZsPRVadlpxmg6Cw9fEyo0F89OC/W5QauCqVITtw5yrOKmGa4Gn8CtTLSJb5+iLI
	 pdPgBJpmEayFjHWCniCwQRPP3r9Jn49KyHIT5YPjV1Jv7lUNwaJr3QrKun3NahMjKv
	 tgjvQveKdScCV0RhpjvvKIUTqb6IGFmVWxnlCwvO1p8pL0Dx9NLmPRi0UDaYT08AFj
	 JFY3lrztB7Wd9RcXT97NFb6HarPRFDucthU9/uc5VeQyjDi7UbdglDL91kox4lARFG
	 Wqye/Ug/kqCRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6690DC4708E
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167278388740.23408.4936371038193990904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 366823e5d56980335b7c83c0710dde0307d10bb42612a4f9a375c4b4a38b6d78
Date: Tue, 03 Jan 2023 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672783887
