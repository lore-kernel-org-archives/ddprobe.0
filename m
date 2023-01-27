Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4120A187F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 19:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3982C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 19:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674846785;
	bh=/1X8Sf7pfIN5ZHnXSzgKNiMAMXl2oeaMV64kyRt+2mU=;
	h=To:Subject:From:Date:From;
	b=Q4tS81I1hcnBonu//ecqB0KLhSyBgbEL9V7WXqYzL2CQWUHXfrBGFCUT1YqzcyA42
	 Vo0CwfuDiJvYYpAGff1GVdiRmk1BXUooHwBAPN2VrLdTGuE1edrNVFn3IUU0ovW1R0
	 BRUTfhCCzqweoL8+Pbt2lWmgqqglhbo/Se+jiwmKvy7u7YK0hqwLPt/IzaYDEVS3nY
	 qywq+3uIplD/y1jNz0HvUdqepwluPEGe0LB1IouLpzyn2X3VNnY34UMl7dWFAicugg
	 +UUotv5TaMzN6/W1P3/uoiG3094QA77CcCWyXuadNdbtx5nDIFCAn9vwdSL/V1geP7
	 OwYcnH/Xb4xeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C467EC54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 19:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167484678579.4010.5080223051037375886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7629460eca6be6a70b21b8d2fae05eff8c2062ac01f99d113ce0e09c56fb6b30
Date: Fri, 27 Jan 2023 19:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674846785
