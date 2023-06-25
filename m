Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A87D645
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 05:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF360C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 05:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687671788;
	bh=yUg8yHX5lP0XeF8YJTKjsyf2vtLxWkivxf76CGWvaB4=;
	h=To:Subject:From:Date:From;
	b=i1LeUZYoMSMhqEi0unXB918m+yKd8/EoHajrrS7FbtbmYpu3wIL9f4h3UanwpoarW
	 v30PGBcAXhIYgDvAh+OQ+FplK0wG3khXb8CdZoatL2XYSqsp0unWGX2lzcwwaT56Jj
	 AUabM72sD2GvZ05bBqRsSzwftWtmBLHQYfS0gW1S3mQopJhXbup4mc+eT7zF4qptb0
	 vkNz6lhjad+t0/qLDaxb/1f29cBIIg+Iz59KW21qU/ZGmNUi2HXs6NK1fDTGdzGecN
	 LGWEnwS/8OT7oIIhVVKJGv2DnxQ2Kfbs1XDRHf/SaAsQ068WsMWsa8BKS+9rXVix52
	 jucGlYFmnAjTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4ACEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 05:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168767178870.22219.16694919907954658689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57188e09199824a3de18650859b55295843f4122ffafe1db64a43da556574c11
Date: Sun, 25 Jun 2023 05:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687671788
