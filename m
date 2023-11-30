Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B65603715C
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5hP7StP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80383C433C8
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701335896;
	bh=zh5nxYrA3zXCF3wGCzNa68SoNAiMMby1Nlu8l9H3JaI=;
	h=To:Subject:From:Date:From;
	b=J5hP7StP+xf80lTCPl65rE2W5p5bGclCvQqUXKVJx3A4JAbmnV2e6hdwFhdkAe1fs
	 snzTcKDeDlnURuql/naNMoENOnqbVpPoAohvAlsIP9gMQE57Uhgur42HZ61NbT1lWL
	 n6KwPnlYe/FOARKQOi4kvZlJgnRgb/y7NSLC0YNrDtmqO+PR6KoIjAgl66su5xegbp
	 WwIps4j2hn/t5+LxJk9SFJArd3QPWpBzGWfr4yOdfctgnZCRx/jUyVeAn9D41oBYfX
	 AHUxBZ0+7vecoOqw1yHQBp/6leyEn55m/+hokN5cumz38MuEDthryXObEJduUOljWO
	 GrbMdiSdcTT+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62BBCC4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170133589639.27312.5315100509325704910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20d6a07144b9d6b330eac3b1aa5cc72e662e043eb0b4f802c516aae08a3c8c47
Date: Thu, 30 Nov 2023 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701335896
