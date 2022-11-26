Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D9417CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74AE6C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669457454;
	bh=Q84HLN3SdQd86gCT9aYU8Fo0jBzIq+hy+/GhoTN8FdY=;
	h=To:Subject:From:Date:From;
	b=KhAzf2CVV+0PCc9cmqq8g1G0vP+16ISCmfux0QukAElD2LFe5t8W8BiuXSCIu8hu8
	 uEzo7u8QrVzRXjOGazRJyeurSspCo+ByMIziAqQY2YPe2WJC5EHwU1Ji0orhRbUOz9
	 qNN92dEcDYKy8WOmN7NQw6QVpvw0aG28bWO0+JlGGZ74wKOCACI4ICDpRZmpgnmY7x
	 b/3KmCIo+XEpHYNAIQOrDqow5GWUAfUXMfFuh8GnS387Vd055jNSfvslLgLX+KbzbG
	 c6CX2Zt+AQfdI/JFl8sjxDpz6NkgV0WmT66K1j4aTarkNI8Sb2XG0PIW/oLAfJkOXj
	 RI74vf0My7n+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52CC4C4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166945745433.3308.16868175355046955008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c316489b2f9f86cca70aebe3929147d58fdeb065c34987f67f1629018593acd3
Date: Sat, 26 Nov 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669457454
