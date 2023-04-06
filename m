Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334B52F28
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 10:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84A3C433D2
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 10:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680775625;
	bh=NXdYOQkhJzlCMcEIWl2NSsRmjLywn3LabLGfbFiFscw=;
	h=To:Subject:From:Date:From;
	b=iu1r9udRq4EW1EpzqG0P+vRLvzzgSdf5nrb2gzrz3ZJx8wsGhV18WLLBvxK5Z22fP
	 Qj9XuJX8ZgDnIROJZ+WVxrY9b8+obthBelYDReHtIIxIfJjaFfD6MHr8S5put5kliu
	 lscMSq/zn7cTeK2suGSvjphUC1BK4CifRHDizwUUKTdanfTqA3loMqkwvp5Wl/7DFW
	 NK3Ivv5QjPF2uoCVYD4+7iI9GlqQjCTXWQ1Rt+8/1XV61UTRYJang+A2Edo9QW6n/J
	 EqTQ8K2ilmevSPDmIrLoYzSPnP1GVyHYTfKUEhZT/IPXLUEPGLKjAVrr9dpHmF3Gr1
	 tkq4nsHxDgrBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC6AAC76196
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 10:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168077562576.8592.11638248304268594480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14766f62c512796b2c0a4c4f13515972e3bcccc79562c83ad12fd39e9d771846
Date: Thu, 06 Apr 2023 10:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680775625
