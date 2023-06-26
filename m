Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A23ABA4A
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 15:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E078EC433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 15:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687792988;
	bh=mPoAxpOKqFGu17Xf8Nc5vV9s6hdGjIZs4vb4A3pMVoM=;
	h=To:Subject:From:Date:From;
	b=Y6H1sUKNrWUgXFitZNoD2u0FHw/BQJwoJuNcg43YuMTN0f3LGW1tT7VflUUj2iaLS
	 5HW5QI+MjaoEt5l6VJenTJUud+29bTKC+jmfa9lUmoUhalZ1F5EV3R0xpIsWQL3Qfh
	 DMMeGWJhM8PXFGrslZwppyLmVwJ+PH0gGBp8+HqeLSU1JilBL9Mwn8cW+23ijob1A4
	 65AlhEqXXV83oIBarXEPAW5EQMCDHT573KXcMscWhbf3duYIxwWtoPla7EXTJCji3c
	 Kq4XnSFZXfdiaf2Dv978nBFv3GjMeRbFB+o0Vk9DXVutk+8XmCbYZU/vYswXe2TlbV
	 +g1pTyHI5l2NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5DC2EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 15:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168779298876.4135.3981056931656653888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54c47ceec6697b163a925efc27470b27c34dd9c2f1ec2359292243b4467393be
Date: Mon, 26 Jun 2023 15:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687792988
