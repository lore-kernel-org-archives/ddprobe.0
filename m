Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01441C06
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83482C433F0
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670776287;
	bh=nXayZdrjc7Z6EeDTog/e2DliqlPBhyfLsmU1UdDsefA=;
	h=To:Subject:From:Date:From;
	b=QZuEnWjXgkK2gNQJmCjgaUtrZ0cpkFX8aUDyBYFK5SVAVnpBQyIf+EMZUZGkP677W
	 97BK4ShDHQ/t709jIWzO8IIMMZ2h4iLvilo5+s5WiT56mjqbLOOiq5qwm3F8g47Txq
	 9Oj1n9QpeHCF7WlSkqXTR1rKtFuTEyo8ep3ACA71uMSZbqlnaVblmleFhfEer1QXRi
	 elKNoa3U5sCPGWLPlN8iBZtYRkd/NNzmoElUHsSYdobrpL6N3AAk4jQb5khSm5CYSF
	 QhSY6ZWafBSoRT5aOaGVhxhYnKyC7WYSPX8obvQ6q1KDCMYL8X848WUD8Jqe09ELti
	 hWNXNHz2aNdxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 636B5C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167077628739.25108.11579075415858716459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6fe572d39eef8ba9e373c0472f9c3add5f126d2f333c642b6d1d13420f84578
Date: Sun, 11 Dec 2022 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670776287
