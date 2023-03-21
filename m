Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501ED7E0
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 00:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E50C6C433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 00:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679358425;
	bh=dCJt9q2DN7Yr+q6Rq/CWfoQWA78cZvDxggmrgynrFAo=;
	h=To:Subject:From:Date:From;
	b=K3vmiXoMA69kg8sFJlDaQZ+uNNx7JP6oK0Dk77JhFhY2GfOBm4o0xDlCMKMV58HpU
	 ptoRqTKQ7nXgU+9bRn+zuQ2VBpYkCnGGmVwOceav2TAbK8x/2GnoyLbplsXyZdaTFG
	 MCr7K6Wy0XU7t5PdfEZR0N27Jbr5Jg4QH8xwOFTgcuJ5/ZRPa/yrbr1wau8oE6Kp7Y
	 GX8+2Ka/+V401Wxt5XmFKqra9CCrada3Ti1B1bd94MqY0dqR9emi+ipze63ujermuZ
	 2wJ2NiCigRgcenqsuoM3r4cCaYqTG+rMPKEEzWdrAlMc+LsWFKB6wjsMj9RgTCuMds
	 +pcEKlqvhZzvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1690C6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 00:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167935842577.29253.1650501004369535961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3977e8caec34f0812942b9d4b48533afb2ea70bdc8b9104bbad485ab87132e95
Date: Tue, 21 Mar 2023 00:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679358425
