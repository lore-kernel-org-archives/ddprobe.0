Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0037117C3
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98133C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673318487;
	bh=ynAYPocSkgQxtjEHuEkZqgQuSzCL/eWaJ847IWJ2Ang=;
	h=To:Subject:From:Date:From;
	b=ngjd2uTXiMP8dPKHk2LGtBXtm5vRAPZj1iBcDQRk6DGjLLmGhDXhAktE7zvY3pn1a
	 YrBosKlInEnDtX9ejeyK6v4F4RC0pMbKYvJu5XkpkTpvpmPokj39CKmULxTZBD7FzR
	 ZLu52Tjl16qPt6+ZoMZI5C2NpbnzxpRvJtF9IAeWqNPoplJMiqPTnJbBxD1A2f11ei
	 SGCPVcl1ULYUA1lSuQMiiPwjaHaXYTAKrOqZE0USDC6VQ12B34uGHWKGIenkfwZne7
	 HobYjRk6C3jZirDKi/JLL9IqbIvjBm+oquyjCjnKMniOS1VXQ7DwvWAczzZXM68daC
	 p2PILJg1Frv/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 791B4C54EBD
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167331848748.2373.14361967953934325198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b121a318c5ceeadd7719c363891d695a52e411723f3b3bbda0ef43891330808
Date: Tue, 10 Jan 2023 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673318487
