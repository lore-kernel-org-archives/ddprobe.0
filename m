Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3AFCAD38
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D06FC433F0
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672846887;
	bh=ST00CJFpELhhjEiNN3ON5roZPsBrciZuPGjw82G8yU0=;
	h=To:Subject:From:Date:From;
	b=kpy9cWCARF9tpHk9Y90ljf9W0oN74Q9BqyfXzmP35rbTYKlkfNjE8Gj56e/AKIRps
	 gLxin2zIf38au+l2x2Vzs1k6f10yRN9FryZrWyX6VYBP/SPXDpGMnbL5mV4AzZi2dO
	 soUMkA5a/HRHZiYDdE0o6uv67rhF4/cXABSYQrx0Y8UXOMRDhvu7mBd3mWgGVI7GwT
	 ktbE+r5WKuiElawxa5TlDUVcNRVB+3csljcWOUwYUFm/LFbN+4c8yS1dHZ/Tcfk7lo
	 LPqiAk2+RUJYe7bS4Euohb3TwbBklLBbb29QzP6Udw/MisXVyCLi3X1F7t1NVPn3Fs
	 nPryOxvxbthMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 609C2C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167284688738.9384.4811634897312325369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c29c83903af90a12ef99f92987ba124fc9e3d69251d3b9f4130a741eb32d47b
Date: Wed, 04 Jan 2023 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672846887
