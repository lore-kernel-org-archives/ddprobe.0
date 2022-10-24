Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC65A34
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B04DC433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666621853;
	bh=qKGlRGGLUOuK7gPiDEe/mSiOdncQ41fkIvnLh6V6BiE=;
	h=To:Subject:From:Date:From;
	b=Gb5o96eWFzuG6n+bULT0WQmHMu3HVsQ8E6F+ZlFj6kP4Ggs9aOgUUjB8qoZSLoZFu
	 8ecaDKvnhpRKKDlYd5J0ubV3UGGMW6A3N/mFf5YSYD/gM9JPyrNbNbj01j6tikifQu
	 hqVMkGsGh/0nCK0q+7phfXYJX7VHT5CBlGh5GC06X+FUSREJ6vQEllT4j8Vi3Drd7l
	 TPHKLAPXpukIpX+xEpxL2oilMBpuBTLhfnMcLo6m9ddPhsFP6snpQVeCnP2sQARQml
	 vUjQn+VlFT6RjFaU+i8RnsDq0lA7H2AEj+Jwgf8k3ZijmLzC1ir3oi1L7/JSHM6dzm
	 zSynTds49DA9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50FDFFA373E
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166662185332.9333.12423885094868321465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53cc38b9fdc64653bba9fa54fe9d7acdf8ca1476c184e03afa35deaeb8e887af
Date: Mon, 24 Oct 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666621853
