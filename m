Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB8F33CA
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 14:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BDF0C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673015487;
	bh=/f4B2TpWvNS+Wjr4I1DPNeOmgn7yRXXsY6Cfke3ynSo=;
	h=To:Subject:From:Date:From;
	b=q/34HhcwOY3uWB5J1ZttywvmnneX0Jz3yCRIoTqzJ8oM9Fq93EuXhMB9im1pGl8wo
	 szamYnBYjBHGNb/gTFH2ABNDMtCCRWacX35ZNEp1VGY6GTsXloiZt8T+F7aXieYKGT
	 hjY0PpoCNurWDWdZQDzFaYlYybh5DP8ySZD92MR8rmGLABkt/jwJNfFA18fzIXe47H
	 vDxXiMNC0ewHWnB0BTjs35vZFKzyMVpmtGFYhsY/gg3iGZbAdRMP2rWHcVKor73Lkt
	 sQ07lRJVobFLXH5xe4LmCA58GEA6JdBHmN+2d7k375AfMjeXOril0/iN7m8fCCQR4R
	 vq3QGhfmo76eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DCFCC5479D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 14:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167301548744.20796.296716201394918448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 972ca099fe658dc6377da558aa2dfab5f68306cff09456303de3dc31bf6ff610
Date: Fri, 06 Jan 2023 14:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673015487
