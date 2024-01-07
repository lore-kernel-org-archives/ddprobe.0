Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1579D134A4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fAP/MmDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86802C433C8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704632296;
	bh=2aqOgFSSS7z0VOtQ38Kr3CP4lJd1+vFg61owsQoDQNM=;
	h=To:Subject:From:Date:From;
	b=fAP/MmDzBWoXW6SuHOkMuDPRdRSmEURyKwvO07mdhnlsoSkT4mdwCJxzsdH5zW053
	 7kTWjGtv0eFUR0lWt7D892XC1at2YYzTJFO8Bvxjv9JrdJnaXGQ80Zsf+bXlf2v0KD
	 x0/rS8w4drVX7eHPQOsni/vV7vhHaxasnXZS13Ma4u6LsY+XhvGUT+5c36DtswPK7I
	 2rsSJsWpbtjJII70etvNDcSMSomWlmZ/u9WsZx0GLmq9h7iGiPx7BtwelpTtcRnscu
	 H+0F9V1kuWj8GBd+/93fODRsGoZ3jMNIKudP9J49sB614ypmM6c5YC8/d2OFfGtYSR
	 uVm7te7W6yUEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67937C47074
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170463229641.21525.14860197778282414389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21336682d16419d8d28fd642c31d4dc27266c952f167a228c3b2a6d2ef555b48
Date: Sun, 07 Jan 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704632296
