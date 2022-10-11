Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA1E17C5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74B55C433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665465053;
	bh=30POpfJVt4wrdm5T/e33gA5yE8xzgR02ZUNpNJh7L+8=;
	h=To:Subject:From:Date:From;
	b=PkNNkrR13fhsg7CzRmhAOwBsb9REms7mw12LUSboUqi7VkIWWa8wu+pFeyTuYLOAz
	 9nBsmisyCqWJBkKHAmhMgbFXo40lNvRDxrFcZtXQCVum12a12A4SbCloKH5FDwpxRp
	 bMOfUjMpZqiVMgpPfCDIMDV8n4HBr1e7vKF8+MiFfmMYYKsznx0bxsR/J/ZcioiIZH
	 r26igy8f/pNMCCuLTM9bg8HO0QFD1I195L3gORvFuxpvZgglq96ducCINQG8yc4zk1
	 DnKcIbkBKtaj7R7BO9xY/lo8/P/3V5gsuZZcreySE/6yFfwpYD8Kmh9Cv5RIHqN+YI
	 bBadeZ1/yydJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55378C433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166546505332.19041.18159877056693079335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba7ab161bb49579d5efc82e463edf39e75fc10ba57980c55569f44ca994b22a
Date: Tue, 11 Oct 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665465053
