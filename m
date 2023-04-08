Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534EF29B0
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 20:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F221CC433D2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 20:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680986466;
	bh=un8jEQbYzyvkahC+u+30IBruyo6Y1jeXLTXMpypdcGQ=;
	h=To:Subject:From:Date:From;
	b=JNfnVRlFTxFK5XV9BnCuKHq7UoHIp6g54u1ih8Ilm6BfWIXk3fl81FYgMIACrjs2L
	 RFIJROewO0rd4WE+wU4CWtKenQOZfiByjkv1OMIRyNGd9yGUpqjboESnPFxGod9N1R
	 aFifNoamZ6YsmJdGT4oI61tqmRgTOXTA4IroFXmD9Bov0WY8obSc3vgnAVOKqV1wYn
	 JxzqtkAvlcSoBDUTtesWC1lQ5Gpy68q05VjGwXdlWC1hQ/OzXIs82gd18/1wV4udlw
	 uGAnw1p7E/3mbBq+kfd1UICxlXllAU+k+MF5kjrg6Qoxbk35E6MO05NhN/rZBuFSAO
	 v0aSSPiV3hx/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF3EAC7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 20:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168098646583.22381.10267367674918636320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f3e58819c0dead06386d63528e716b06d1a5c7006eb761bed80c3e0c270a2f8
Date: Sat, 08 Apr 2023 20:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680986465
