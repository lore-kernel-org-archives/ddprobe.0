Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFD0E7B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95129C433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674059487;
	bh=8heqE+aN23HTpkXl8UUwg4dW+dy3tx4kAWAO9wQ9Q7I=;
	h=To:Subject:From:Date:From;
	b=K0hzvzaJgoUzski6ysjlhmP+UmrZIyPV3daKoRHI+eVpCJOl4JwwcJXFX0rAByya/
	 PeftMxN8FXu2C0o8AjiLFM5LxnUpTwsycsNu4xuYFdkz2tuGaNfT/IbrVa1S7lraRM
	 BhUv5FI+hpyEIVOTBvQGA5GSBiO+KxKCefffWgPOx4V3w57rIn0pDLV1Khd7W4f8Og
	 vnnQm9/Zri3n1q177N9FtDFsj9emWwCVw+c89LVveBgEfQUHvlf5dhTSIoznjuJnGS
	 GWggRMM5jNrmNY5CSHMIL7ANEqaSwEhNzudkC6ChRFDrlDHlOdmQEVfD+KqGe2u5kk
	 zq7WVImGLOWEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72626C32793
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167405948745.31091.556890537671587419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b094c76458cc890627b70613daf7fd082b124fac650d6b57a2745b7819838756
Date: Wed, 18 Jan 2023 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674059487
