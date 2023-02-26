Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C18385
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 14:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9BB2C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 14:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677422165;
	bh=t9f/oH5KOHKlG5lGJKjt/Ujje/p8Jyqfb51noVMgASo=;
	h=To:Subject:From:Date:From;
	b=cCaSJsLScNSMB2p8t2Af1XkGVyK3edThVqcs/J+I9jmwTCOYYP/Non2BUfMdfR/pk
	 6hsThcbjmG1wEQmFdgJNWDhxfcMAPMsuhG8AX0aNsPFiDL578HNleUH+4Dgif1U98x
	 l67ZZ2FjWkrSNwuhy7TLzYrLPZDfOSTpoJwKSl+TLZEt9bg5mjCI/Am3cFmt2YIuHd
	 kyPyPIkDVGr7+WsuPX3bGPbDTamwRGcx1PadsvtWiuguCyxbbr57ha/pfiRxtFCYk2
	 C4GN/0RCM0P8rJ8vxnT0c/XWH1YFXsMTqY3SmFAXpV1LvZ/pywYDXtRt++n++J9CHg
	 MPbfztdeBtMVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA280C6FA8E
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 14:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167742216575.25818.15355556688530370852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0505ae5e2ff71f0c6f5ac43bbd840c827a93df5428c9cc281973ef79a391d6f9
Date: Sun, 26 Feb 2023 14:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677422165
