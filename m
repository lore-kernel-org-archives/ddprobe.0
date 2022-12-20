Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36F97E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91381C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671573687;
	bh=BuYW9uFcohwwEAfQdL6Wt4Kd6uWpiPGhUrFtRANPs04=;
	h=To:Subject:From:Date:From;
	b=GDiX2Sk6bpG7jBLabs+LPzHpIBtLCW+5xdE3s4hugUzMffIFCDb2+d92GVolbrBPM
	 llcR2xQx2+u9cVL+WCfCv1gWSVJ+KMvmckvv8+9FsaKR22QESqwS/1PD+NQ1v/TPsX
	 IsTtg9i92+04vyDVw4US3rw2dVV2WmGDmclDPDwcXMmeileGy2vdyrFVnxnFLMU38i
	 Bf75rIhCwbQBSVWJ1qiF+D/tPYwObVqL9gNqq1JzIBBylOhqAauqCk2lRwhxEIuY9d
	 sivxg78TK4FStanBxhdhrmvUd1u83OHYN36ZQt0pXQoWZ3X6X3ApEDxayoMMFqqGEe
	 BFP0Krf4Aai0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 672A3C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167157368741.3375.7958873873654398049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 714930a0545628ac4c7d8c7016a156534106b6d659b779f3c42116b661daf496
Date: Tue, 20 Dec 2022 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671573687
