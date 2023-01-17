Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFE4F4C9A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AC66C433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673969487;
	bh=ml+xZvYZbTD9/fYVbgKrg+IORNA5NeOyPnuLT9btDTM=;
	h=To:Subject:From:Date:From;
	b=RfogVX3vtU3pEX5EQLB2wO1hYXRBIL+MQgPBUOsK1iDIo67H5Vxd35SsyNRRZQZdI
	 eFWGxHNXXGdRdLVshvAfUjbVc5rnGzvxDowxcPdWVTDDfIZwILSByzF6ERdxI1s7Gf
	 0upowgCPEzikcxHm/LgycGbZATU6guE0thA1gLF8SUvk86V1fh5fZS7UH0duAlGIDp
	 xt3VQ4aBHxCOg+mxMrpvJwJHIaZxm/swgVCfxiMN10kKtmOex7bt5Dlw9yrTLvVfJL
	 PZ+w9y8X8uZ5RNBMR7cAvVKuJeq/FjRWHb50xOSbmQAFtgzh1Ut57Ne3tLq0sQ6MKb
	 2bsXMDRZI6oaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C1E4C63797
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167396948750.13072.13498338341576103162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a74527d1a28a93ce7cfe580d4063e066f20580f56dc6387d7cf44e777b2aae90
Date: Tue, 17 Jan 2023 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673969487
