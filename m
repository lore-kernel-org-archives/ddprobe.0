Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEAF062D
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F461C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668933654;
	bh=pDkoz+Vt1JsRzNbxeiVTwrvPX1f08QnB8DehFDhAh50=;
	h=To:Subject:From:Date:From;
	b=bFlMNmc8+LtcZqGBGe9VVSBLcIAct3xCG8ez0EuduoFWiHhWX4CNaomHjbVuwi2/s
	 hPx6BvnuHHxeRZeGPsXDUxgSfTa+yJoL8fmC5U7dYmRJ+XilTtYD96NL0Unco4Rtw5
	 LLvxrvaAUAVcpLi4agjmU8N7ONwbtzZ+8z39e1yBkJByG8PXUlhOmI9StpVKCKc2U6
	 slPVIImIFyc9CK571gnsO5paipq9eQtHIZqn4s+PlKVbtGKrS7gp74CE7LeN1qZT6n
	 QvTRoZSxpEmIu816933nY9iiNhGQauLO/6XzFNEeRbK42eu+Jq1NGB6rEGqpO+pGMu
	 4UEn2llfW+S5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54419C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166893365433.15833.7002103918192583434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 236b62103c6b53855a4cf5644f5cbb40e739f9f06fb92d513cfe8bae4b3fa089
Date: Sun, 20 Nov 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668933654
