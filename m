Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED5C15A9
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 02:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD23C433EF
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 02:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684895045;
	bh=1qnpwv2TsXNm1f0Ch13cb/xj80cDjlVMUw9Kj7goLMY=;
	h=To:Subject:From:Date:From;
	b=FSgiMJ0FbVcqgM6zaG36HCC5QvMFovb80kIgocsBkzteYB2dz8Tnn9FsDxqltRuz9
	 Hf46lo2XfN5ZB+YtbLI9RKTg+jgU5crwGHNO6pbUIss0s09ZzryyynKqyzJsJop+7s
	 nWga9cxIPI4NGwhijMUyICA89ef2JPCloZvLBBlrLqYqJp7f+1kKMeiAotsa4F5RAF
	 6CYY49tF4QZb0Bshmu8yA/ZYhoL+o75AEh+AqKF4MR/Uq46Te2/r2vUt2vzlS/VEpB
	 zOY1RnfQL0sWP+tcGAN06FQASvLCDX35ActC+0OSbBjvHl2FDwSaWMdEnocK3/EmlG
	 hVMPaHm8sPUiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D33C7EE29
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 02:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168489504578.18264.16500465020798758295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ac6d7b0819b7d4efb4174557fc4c2e7d442e4002f5aab675bb1fc4ad0cb7d3
Date: Wed, 24 May 2023 02:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684895045
