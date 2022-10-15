Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFCF736B
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 800D6C433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665829853;
	bh=FPdtffyotRYPoZPHpvmDXenbvSer5ynlru8hCQ//mPE=;
	h=To:Subject:From:Date:From;
	b=jXkiKEVLDh1bqjbNzbP7xqDkiffSox7DRWrz40EVKHEs1FNDzpWolGWGpr0XOgQ55
	 MdsyXfnljpgm8J6Qbv3WHyJMioyiWHcILuWicv/a6nT1z6H97nkfHOJsvEMvDKDmf9
	 wXEsMNEiYIxB/iD9xoNz6PcWiDq+TD4PpVX4neKWJAV6tdrkG83ze7Hl7Oqj7fgMcD
	 0ASEzcpbntjW+HxJf/vxlQ0wmphHTYmxh73i4b4CN89LKzHUdzkxnlAryMu9NkeeXI
	 X7/fwXrHRFj8n4s3qV7mCMXFUDVQ4hcD0K3b721ORrGA5tuWv2CXaleGwCCaXM9evc
	 6hvO4CLuN84Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F44C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166582985335.1882.18024796754915509952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 342b4ef48675687c1dd99dec885fecf7575d3f05d9e7a68b7c1f37464550b834
Date: Sat, 15 Oct 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665829853
