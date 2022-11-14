Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFCC6EC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 656BAC433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668393054;
	bh=KI8UWDTQbJDNd4uwWA30Yh5xxm3DBBDDEfRduiKY+7Y=;
	h=To:Subject:From:Date:From;
	b=E92AQOJ4oXc+/8AcQusvTk/dRB0Ev8CDsB+DrOj1lO98BSKTnAfp5PSPSNiiFx+tv
	 uTYmp0JH5iCs+5QP1yLi5lk/ln1u1yur6/3mFEh6LRphdkDGKlRzSlIXOjOzQa2n4a
	 kLm3yqXVo5sdv4+fxkbE2FxLolRyxnHqombXTmuCy2xmUg5jPv2zLpY/Z/DV0P1fue
	 JN+EyAKwO/L23+ouJd3locKkwKCajwcS3aqQOvtKM6B5Xx22YssQqcbYzU2PXeeAIA
	 nVTGeeFbIOp9GMPc5xoCtj2y6oRdedY0aEgun0oFWHym/tGxFzAWAtbn3jSsI4SCro
	 iJPoUEyM/qwrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FBA0C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166839305431.9195.6667466378111301081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d02939ec2fc7cb468212141410577ee1ce09b2e47fe58ff93d151d8c074b2a3e
Date: Mon, 14 Nov 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668393054
