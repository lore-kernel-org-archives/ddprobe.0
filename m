Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE25BAD32
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69B61C433C1
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666813853;
	bh=ZMSAR5yLrXmz3qAK451PGOGTa+XRI/WeRnPAd8aQjGo=;
	h=To:Subject:From:Date:From;
	b=FfRIPYxOP9CugKUJ/qgdExNHCtttd5Ms4VGnYNfC2q7S1PUko38ZF8ZwPFoSEUszE
	 45wbNQcxkV+GLuRrPqf3+xJOk4inMgW6Hvkot3FRFjbgFwSggCtRMJhXj15hQx6eyL
	 2U/L15aXaXL2PCjpFCMaiJ029xHGVxl2wD7wt0o3sDCTfaDweVgjy/xphT4tizW5Ph
	 GyihPMEzWZnLFmcW/yEz9kGLykz41sdzN+0XCJZE/v6HhtEBy2dgU1S5wF0fGJFuMY
	 d6HdNG1upRg5ap5U3fFGQqhBtQpkGbNVVFlhrJZlHlhdeFzOCKAx8EKRCRU7+tTlkj
	 Dku5OCqsJyiQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F151C433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166681385331.29427.1094385666900701123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5df36455f7b92a6c39e7ca89e64e439b61e6a73b5fe6cfcb5c255e6b4f72724
Date: Wed, 26 Oct 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666813853
