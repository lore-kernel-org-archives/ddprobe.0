Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFAB1A57
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 14:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 750B3C433D7
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668954654;
	bh=Gshk9tQpwCLE9VJfPZcYRFMR24c/+dZxAcykQX2ApbM=;
	h=To:Subject:From:Date:From;
	b=Utcws1UmdcDGdPkzX6bl0MGjTwbhlIW8EvSR9Goqz+XXMKJLq2+lFIThZhNgxDP3H
	 Obw4L4SN6O8BvTcNzVV8gN3xWzUuGZSHIobOlWf1Oj2iNl9IbHkJ4xNmBLTpth9Wi5
	 2+DqkaCbeDA0uSWaHBBzVJ9TPJT1DrnJjuceY8MC34R/4QrIOg4NKIRmCsCtsMzzdR
	 hphG73khRsbbw3Nx67WKPgGMJAQAvvr6bJhfcdLvUqvrvY0vYvY/xN4DrPaaBK4zYl
	 yAHMzB3iFABX3Ejij+s2fZ6EJsmzdzlDU/YNXpgVlScjEe82h6or9XDTorj6lv8GP5
	 0uo9oHV5tOsgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A721C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 14:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166895465436.22293.15915279893271344280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d130e71bce91564f3ff18b6a1b467ef82e756dacb4f4fe29293734b43ec3de6
Date: Sun, 20 Nov 2022 14:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668954654
