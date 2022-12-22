Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E25AC23A3
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D793C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671690087;
	bh=sSvnV2GWuY1+YvJpI8AathGPQfKhIeiqC7ZgiOJ5Xa8=;
	h=To:Subject:From:Date:From;
	b=j8h2yNunKKJL83KNMZEso1tJHOM74hRIltA3HacOuO5y3H9gvgKQfp3M0ZW/ag41S
	 RUs4J4kRmWeLPZBkz2++76ZiCDfIVkc9DbrvBhR8ssWkJJMcPcmbJftp0Kz2aJG1RE
	 nWgyZ8cDVHTRlYqNDr2zUSWzVm7ouiZw5P14qqdwGHURM1crKGZjahqYgdWPsMne1v
	 O+CO1AGu3E0cf+X+8r+ArU3O6etaYRFpaD4lCRGb0fTa5iZ8HU4ta7XiLz3textHXl
	 Pfr6YnrOai8jVXgiy8KNI67BsZU0Ady2w8Qwy24AVk7mdht1/qgODf4YcnWKiAptOv
	 iz3sHV4jIgZAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61ACEC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167169008738.6867.3734572379766189188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0d1218efbe7a9afc6e798b0d1a70e7d79243f4aeb82465f063f632b0d5ed02b
Date: Thu, 22 Dec 2022 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671690087
