Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBECD197
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86E40C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672549887;
	bh=Xpug1SD1cRcox7F4SgBURJX1PkVS1pAV+iDCp1KYaSs=;
	h=To:Subject:From:Date:From;
	b=YbrWWbsjsU2atFWTsrRpNUmVLnjAcPjYLaBhAmA56bmbHrs6x0SoVJg40wVe7U5Cy
	 VgY0BPDkkPEh+FTcgZs6XZTaP85O2NNInyiP/HyhLZhkJqpYxuEbbYaZz/ItHIyVTW
	 cBcxrsiTU5KSK4hj+0FqVN7dZkwgELdQ80duQlogOC5d19UlvThWJn8Qca6Lh6QtDU
	 71K2Efws5e5IB29UqaQYXQcAL87qgfR27fZ+rsioGvbDEAlihu/6/ijUf9CQqv1TPc
	 E7XqBHv0dPuAuRvJbdyk0cvKrOzovSMFIglHG6rZm9AH7qDs3PO/FDNdRXKnQQhact
	 bKAHD6USnLiAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C260C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167254988740.17545.1771856220279773413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 527ace62dd4e5660b3ef741e597256c097de055044ce725e54a58a0313c1f2f4
Date: Sun, 01 Jan 2023 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672549887
