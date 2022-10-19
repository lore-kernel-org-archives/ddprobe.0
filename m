Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C282F7E
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AAADC433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666195253;
	bh=MwbHrGVnui1LE4mLuGiyzSoEOZXTmDO20vPhC2MW3Wc=;
	h=To:Subject:From:Date:From;
	b=WRm2N4F1gu0U62KoOv1KfHtrAmre3JlZrvw+iO01V9Roiq50ppCyAvLl8O0IhNF6h
	 dH0f4LnrUStpBMZMsenl1uTOuRZhwX36Fvumjlz7ChvbNtDiL7w7NHaPywMkAFPbAM
	 8LeyXP5PRlAg/3TXyjqAcqFdasIDkPmoRcD7I3wIdFu2skSljBtfSLqBMLs6tjrFlC
	 mP+UjU7zrXIJ4q1xnyEtkU2f3Qr9eJ6CGGpUa5LYExQvo9XPjasBXJBrft/X8G6Cqj
	 1DrOgEoiSheMA9r9b1Oi4RzLhd0a+DRvzBg+uaGvWRljmBl1UJq6zsZvzL/5fz/0vm
	 YCyftzM9uol3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 520C1C433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166619525332.3264.9196309081406742961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f87cd8a23475d98dc3a3a3127ec1e217c2af1b3a507e7aebc38b36fc872aaf7
Date: Wed, 19 Oct 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666195253
