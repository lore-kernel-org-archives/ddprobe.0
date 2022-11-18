Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFA8C8F65
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E529C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668792054;
	bh=V36JanSMljwPUFoZXkoDFdwIi3SOf83nlNbOIC9Iu7Y=;
	h=To:Subject:From:Date:From;
	b=pOFQ04C+Q+UQqK3cynfjyXCaugaXAfaTE4JU00SihDbVwt3RYoKTdzzwrU+My0Nhx
	 E72CUX6EK0JKwfAsVQ1RR9iG+sLXRF7NXyHGi5PFEX9fSpVDrRr0/htC8UpSxl+Pk1
	 MdnSBn5Fass0gmf9kvVfrF/MzHeINM36zvy32nKL4B4MchIFBwfwkvm1q57DqKyD5d
	 xcl/uVZIhzGdARdNwFXBShoefHBBELGiRH3pyiHNEHNpKisiI3VvmplIZOVKwUVDNv
	 fZA+CFSf56zBGmXcqgn8BU4NxngKGlUwE8zpsZTWBSam9kH/qFn61IJVA0II62H0bS
	 n9aoTAUQAUOAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64C71C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166879205439.24123.17522082661664538526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36c558a6ee4e53ae8ad6f7ea07551704bac1c1e4517c58256f524e154a0647e3
Date: Fri, 18 Nov 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668792054
