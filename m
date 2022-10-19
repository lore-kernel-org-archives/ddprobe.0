Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93FF97E
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E0FEC433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666193453;
	bh=qp6NtXD72AhB0YDKWIUOjvC+mdPtQyKqoKQWu1GoNi0=;
	h=To:Subject:From:Date:From;
	b=XwyDTsEv7u7uce0tacesGdxSb0dUrpukLLADeY9xc9/ejXEXUuwy5klANKLP1pV+U
	 OLvJ22dIH4GINAytp1Xg3nPZI4UO9UotHojNEvHkXAUHrlAZXVo7p05wrQwK2W1olN
	 Xnjq2xFZ7Bs8vpF6BynQ3vffbewCOvKKVxOZCe8yREZdLQv35Sy4Q6+eYKY247d70j
	 sxzWH1P+mpmSMSJ7vjpgdSipXjEL/Jw0Gc05+e3E4FR5VbF2VNqBbL1VmogT+sTx7g
	 CrE3JTF8GCD5EFtHY43OTKlBe7Cxqaogs67Nc90+DzHPjijAgsBtokX5VTdkbr4Ifl
	 0+bFsEcbO5rMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F07C433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166619345334.26759.784043303058020440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5537d628553f477fa54be7f19305dcc140a3334f518e37dcb7570c22a1a1f734
Date: Wed, 19 Oct 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666193453
