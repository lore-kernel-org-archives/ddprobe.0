Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF4D3628
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 846C6C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673577687;
	bh=ulWYYnsAXZ2CWkveTdITxdWvCUS04v0IDHGJdsywXJY=;
	h=To:Subject:From:Date:From;
	b=HKz99SNl+1b4HCRRD7IpRZZpihrEe2mY6SHyF6AOcpfZ4tb0Gr/NVV/h4xavTZkHu
	 /UMOCGi1BHvvJFtHzCZ+sxhfI/hQRYYveBm9pmT2Ec0Qj6Z0m/VkCx95X5Lf36UjRw
	 +tBen1HWuhrXtU84tW6vcRMxgOnS9bbF2r+c89vE/UTfmc5nnVcC8IucDbec/MgFkm
	 MTvCiXu0t8/diEbHFL72oMzwtkSrH2Ehs1oKvMYtPSXmbcm2EI6lxUOy1TX8Rhi8OU
	 knjjYwZXrWIDoIUjoziup9kaNOV2T0ZQekykgHbVJlukXezDuuQWRlQKdkYjBTI8q5
	 zZJBAyDvHefcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6833EC54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167357768741.24177.9980122947280632825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19fdab518127a4f2245309f62440e94e3fa8898f8ffce0c51261c3a984815193
Date: Fri, 13 Jan 2023 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673577687
