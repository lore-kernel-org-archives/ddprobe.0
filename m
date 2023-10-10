Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC18BE4B
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 07:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3zOf22r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE155C433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 07:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696922228;
	bh=vhHVSd4NIIpUPbQw4Yfy33LxCS6jpddnozKShdpq96E=;
	h=To:Subject:From:Date:From;
	b=L3zOf22rSsvD/KE7QCTea3/+ySWy6VJB/CbHSPF2XqxAGlmjx0w0YpxOZbg/cl3MT
	 hUxevZVVz0TbOvrQPopKIHwVQzaleIadIZBD8qDiMcMa0+cC0zGW5d5HUIQxCSU6TB
	 ktrcFs8TXngwyIPCF38lI494JE6c0veyyNrKjy/BWTFbp/b18dQAmJq4BptXmHWSht
	 I60QMUm/ZuPB3Om4of2D+WpTB3ElV1mRot1Ul64XRAeAMf/xJzLJMFh9QsOVGSLkHU
	 N64k+4ohHhWth/1ai3Cv8W28KH2GLQxsERp4l8Lb//XHLC6vHUnETfcKKy3sPnQaHC
	 UShWCtr+kyTqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B034ACD68F5
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 07:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169692222871.6527.13587427421124271453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1378a5d8094c3c420869f1902815c0cf01a9a53fb038d30ea1889ee4ace356d3
Date: Tue, 10 Oct 2023 07:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696922228
