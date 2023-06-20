Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5162115AE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 04:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04D0C433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 04:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687234328;
	bh=C0/rQxx01OdqC6/3VBOEuQ2vxHnK/7mT83OJef5Cl7Y=;
	h=To:Subject:From:Date:From;
	b=sxP9GMSqHvOvHGBES1Oz9e+VA/i3LV+LEyOJp8Yex3OI/+g4EUsYQVGbCua8piPEH
	 LbCeOWE/n33Fn7ej1e+LFoRIhEzNnTc2wIo/o+SuYncOWJaK3L5lmvDdinvJts78Lc
	 DvyAFa7Wa+WcskMMVLAC2xQvdktpNDG/HF/Lw7t8LaTm5sxxsPl3xsjk5f638Gm7FT
	 Nt0uehTyR48gdWZWJQ4AKs/+F3yzIR36k0dc4o4ygBWaSIP0XkJd+eg9NDzH7jevNu
	 oeAqEXSRTdWcS2Oci7SaX/Jdoiuon9EtebT6Mr+QpAqyb2gEJJ/7x73YDDUY/BmwRu
	 +L8qhRVD1OIQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21CAEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 04:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168723432870.9547.13470004078048265783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a5375ffbf4f72e348f75584a0ca7ec24b1cddc4a5a8d1da4aa3db84c5a34a28
Date: Tue, 20 Jun 2023 04:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687234328
