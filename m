Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF7222CA4
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 23:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FB6DC433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 23:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667776854;
	bh=7PMM8d784nhHfOzQ/SrYGPE0oObidNVLXQrIQK1gZZs=;
	h=To:Subject:From:Date:From;
	b=MvxztcbDp9kWeLiLZxb73U1kQIsW84an0N6Izufm7muFjiWXamwLca3kbm51yZsBE
	 nXkb+kYoKMfkztS4t3E6Erx/KC62kwnaYA1NrLF5gpu/v8/hY++xjgv+kZPEs+bH8w
	 +xpoK2Y8ipRBHEMHzzwQeVbYP4+IlKSWLcFWRsX3NWbyHavCmg3BNbDxMvKfAWKSyc
	 BNJr5usCkq3ek39AEF1yHgsc+7tk92e98MAeBz6PIWQIWgCA2o2+vzwJOnNd6PPQGp
	 vhoY8wd2ELc2D44qfL85tjYJ+LuplGf2ngX8pXIYfqBwyjzqw7WG0PpLdWxEBk0QDH
	 C4uEBGFwqQw2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54AF5C4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 23:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166777685433.30132.1112165312264697837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b367f339f3a7ed95fb5033897039ff2b123635b8c16a935d4323b247c6e0bfd
Date: Sun, 06 Nov 2022 23:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667776854
