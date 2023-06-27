Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D792F79F2
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 07:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3BF9C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 07:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687849989;
	bh=Y/lyojeisngUN88zbZ0lSWRn1lyAdglkTX2hwmkj5vY=;
	h=To:Subject:From:Date:From;
	b=jI2pT9bg91S9JC7fVZ/LRxsuMFxAWvbgnHSwwmMVMkwojnarOxMIWo7nFT3d97eJE
	 TeWqB+5vt//Dx9sIKelhq3fCT9OW8nklrhXOBW/cSiwXk3v6bp3sRvVTTxk5o6pb0A
	 bHciIhw2v81CUx0AZShGUm22BX3Sa2t7GOmZN+dMkRr92PCvvpSfyOreInKY58koK0
	 1bLCvkDslWGuV54gz1uvwTXROMe5OHqwCwPmBGf5oc7JkwNn2YmTLmpTSHc7MX7VYP
	 ioP/HN7TI/VRN7z/hwMOgqQI4wGJkY2/R1Vnpd8jK9FOj4E/JK1WFCp1NR1tuVCOkT
	 vMMcmFdvaVTpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7F16EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 07:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168784998882.18926.12466629622888747648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 852118985e3a11322552427047733bbff3f0f7819f1d4103032dcb43052c9774
Date: Tue, 27 Jun 2023 07:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687849988
