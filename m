Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2A5AAD46
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 21:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7328CC433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 21:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669842654;
	bh=hdHHZ5vZlby6D/m5mO+k4O7fk7JtyFZFQH2vfDej8t4=;
	h=To:Subject:From:Date:From;
	b=C3uv2PNhj4n8Cr8NZSJvVMJioGdPF7/8QC3I2gm73WQ8o190s/Ebc0slPcyj+1Og0
	 JIz1ZitEGiNAfrUpvZmCLhUmUyVNb1Xj3X87nsUO0U67xNE6Qeasn2nJLXT+LX0I6c
	 P7Ai1Apx2f6OHep8QXJaylx55oM86H6TDmF2I0AfY0UExizv/MTSkzVtHKYCdYWKCG
	 U4SysW8QTHxPMArQsfqSbwQDR8JLbX0lDbpGB5eimNvXAbnwwi0TbpUX3i1tlHTZxu
	 5IsRxFvJKS5vKiMaSdqJwCbfKgVNn2HFM8sufVD9fcbUyQC1DxkgZ6sKHaqxN62dxE
	 4/RB2neOZmmJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5453CC4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 21:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166984265433.5823.2357836948846595809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ee597780879bc17cdd8ad795face9b68ae138cc3d2dfa113b59c2cc8d955b5
Date: Wed, 30 Nov 2022 21:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669842654
