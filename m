Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B68B662A
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70FE2C433D7
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668135054;
	bh=pvLC/GyeIbKfvRE7Rtp0MNVbASHpk9RQFw0GBdl3iFI=;
	h=To:Subject:From:Date:From;
	b=YL64FMFAVK+ns5HKKLAgaIsZljqSCmVNFZBm5nSBnU1BcpO32cNAQpxM8UTFAy+qv
	 eIT/Mur8b2o95uCFKE2leJMMhUcCjlBZ81HKt+Zdcaj/4Yu1qWAaia2/tdUkI9yDzh
	 BZsj7ZFDka2Lr8HPZTRmVXSsShl1sFBJI4ZV9C+t0UiBcXaEMrP8n20r+0NKcZ5zdc
	 U7leyE0bGf6uaqdXQnypPnlH3Y3cGWYCyKW1P8uzJUqOSbY2ts3uxB2Z9+dnIldgfw
	 dqbiElCWR/CYE5JE0j6f8aG/w0O+787C/DVCghLmUiD191iJgRcA0Wk4myAcwpdGHu
	 wbsYJNRTjSoPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 567DEC4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166813505434.21567.16061957630698299369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41700cff1b24886177b9f27600d18372832ab743cbfd293b6530131d13a5f263
Date: Fri, 11 Nov 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668135054
