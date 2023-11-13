Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE88411C9E
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJRTwl5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A61FC433C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699856896;
	bh=EsRRizr7ilyoP5fp9fOXsQJv38cd5wKcEPb4py5aBk0=;
	h=To:Subject:From:Date:From;
	b=tJRTwl5pWnlh/ndzz3+iHtRwVDrgDMn/W8ELYWmo3Pt2OaojaRBpnqwSprgD0xCNJ
	 xt6hCtGtpnGFuHltFh8KJjrVFc3zEPsMuKZjL6QotQ0cnwkI00somivf8KzER/COO7
	 2GBXPUwSipWym3bGOzuGhFB/ev9Rfd2DtCCmB0X1ZPxHoNyG2RJ5rmiOto/DBus5TM
	 8tFe8hHgXaURadWbO+QuAttiGDQoRhrPGLWmvR30639IyQdWfEEhMCjJ1qvGy6bjfM
	 wruoU3qJm4f70YugwZhKwV+tZKCaJRMQXup2wsAg10mc7B73SLDzN3KTzSZ3mA4nmu
	 sbPvQooUlVc4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D6A0C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169985689643.2391.1330068837653805308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f294cae62de9a0380ad0f694942deaae88cd52663a23c48ab5738730d1b12a74
Date: Mon, 13 Nov 2023 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699856896
