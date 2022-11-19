Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C23136C
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 03:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E93EC433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668828054;
	bh=YAnJlcYstac2uyMXH6JMnGELy+U9pZVCXgkrHZhuf7U=;
	h=To:Subject:From:Date:From;
	b=c2KlnBlDM2OosNcDeDB/VBXGRU0QTm6RvuINz+LseY6nLeoxCV62QSVSlvtZxNjym
	 VyonKG/F0GyeqAXXJd8jMc+GlIY8BQmiQmRsW/knzqXzKF+DFDVPSj0iOXi7N6AOOS
	 7neoCla+rvIYxgKXXD+xlI3WWfZD7kv1dvAOPrqveXUoBP98cp1iDKFraFc2T57ekS
	 02HyAWP5ShYa6vH7+ABUWnlrNB7Eyjo2+AMIY+gWGK4x8w+polB2VoOsiaGWPEDybR
	 QFEIFOHP9g7MUybIVqdXDosIpFMUFf9IBvsLKy1Hnqskkq7dbKpVmQ6IwfKbL2NkAl
	 2yP2RFPhkd1Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58C06C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 03:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166882805435.22087.7837556676552646981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 420c5b0ce4d383492ed7a3d8fa34bed0fd801efaf23fcc12cfbb5f3c7a9a0caf
Date: Sat, 19 Nov 2022 03:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668828054
