Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60974749C
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 15:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSzPNPwc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD873C433C7
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 15:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697384828;
	bh=3oV6Y+G6FDu4Y6c42nJ3iCLgTdRNrImafmc6j5JIbG4=;
	h=To:Subject:From:Date:From;
	b=tSzPNPwcUIkD8ImESBT0nC2p4eJreJf4alUZ7Rg7i3W41PMZGBAJ17Fy/Ob71a3tq
	 8dBx4Bv4KlYtCCrTC1rKHz3s9iwFev1g+EKcNlBxn4bk0tj+nXUwBLAWzahBTVfAw8
	 78ckgrnc4J8yaulthEy5ixVCRDrc0QIEOlaQrpY2VkzGC8ASAlXOYkzq122iziLHcc
	 TYdU1jG9GIG9wkPwucbEqaCP3aS0bOHNHiM668VKtEvs2raL+drK2s4LkOYp0gEc/o
	 g5rmtZPiQkCAKtVRT0q3MLpE83mBaje4w8BUe64+EzvbpGk77G2A1R//lF140uDTyO
	 /qzbSsl/ClcHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21C4CDB47E
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 15:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169738482871.8238.1582284866470693999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a2c0e08ec8a2a11846f2cbd7675ec2e436272283942066163ce726d80722051
Date: Sun, 15 Oct 2023 15:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697384828
