Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C5423AE
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DFC5C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671742287;
	bh=WCGvm9GWqq8jvPAYRf0eKyPKbVC6sB5ktpJLxvJvSho=;
	h=To:Subject:From:Date:From;
	b=I5RtVHYVetBTYZ9//y52fR2zg5nrvkHqs/M4zZiXLqQ1Gvuc1UD4529hzoDBG6dYH
	 TpfjObQXZ6ex+qMtv4sGjVbARVCfadCNdOXc30IpHyK+3XvjE+EmA8yNKKo6dVPZ8U
	 wc9JMweZYl2V61v8//Z4Lh1g7ih+YxBBOME9+KeIsBsvUbe/YjZyl4UQZIaZjclpuj
	 T2P5AZbhptNZE8Ui5JamupPmrPIY+qRTlgask8XsCnyXx/qt31oCZH3fgL0XUEKjzG
	 Iy42931BqDZ9jiuWget+z8Kp5mSunDkRvse1N70NhXOnmuabNcRQbiLElzY/amWSS5
	 V3bMAPnBdZHow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65FE1C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167174228740.29271.14318687238382904457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ea1823657e5d6813cc82247668db5bde75fb145d877899e2544cc46396c7ba2
Date: Thu, 22 Dec 2022 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671742287
