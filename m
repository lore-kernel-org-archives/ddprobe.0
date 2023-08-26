Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 645FBF9D5
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 20:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2E8C433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 20:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693082648;
	bh=JiSCoN3VWP3lMekdhObo6hgiVGtSqQrLQGQhc2BvgPE=;
	h=To:Subject:From:Date:From;
	b=vLSWCIQm7QymsKCJH0+jtJApr2XYm8XROuLf0rmp8Bz2ST6mg98bnBLhhNgxA1oln
	 3+HJOkf6UVQ17zorksfbo5BJiiOjmd80LMrGdX1kKsc20cvedm3SbpKts4qwMODRcv
	 WJo0KAe1rYcw2d5vtBW9t63OOrK0xs4GgVbqqBojzIN/fkyg8x6HAbyBSTqs8o/lU5
	 hlIpPq3ksqelxtm0bGC1g3z4Hkj+JtAz3NmC47wJ/Z604zgMXnOWH0sn7T94JmYG1b
	 TF5IrMIogf7j7Z/3vtARYTu7NchmA1M6prYzqXxKMdvFYxWIzoxuWHs3u+gboQTpdh
	 g8L1kQd2fTB4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2F8C83F15
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 20:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169308264869.14891.7805305748163600467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9733def80419cce2f569607f7002cd95a6fabfdd0d76711bc58e719495c24363
Date: Sat, 26 Aug 2023 20:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693082648
