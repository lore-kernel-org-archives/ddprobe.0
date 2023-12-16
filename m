Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E96BF2E623
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDIJT7Lf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B9F5C433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702739896;
	bh=E5Hc0R/vNMM6v/D/AOUXtb4uKU7wkbxlM2HxJmB1rdk=;
	h=To:Subject:From:Date:From;
	b=tDIJT7Lf0A8IBzBI8Z0OCzYy3hysi7QvtsTZ/3svMBEPhblmPnOzyB0iSNNbqaSzL
	 UbZvbzGETocoX2K2MBYbQEkskS3T/IOXiinp/ttwjiONa42STupmhGejP3ac1lkRJ6
	 J/KO3RAbn7NRa2mkewCdcb4eQ2C9ZQwMugRwmxcKCvLaDAKqZYQYHbP/uP2V96tfwi
	 xT1CkmEz+xtsOTpUxWEYETEulZtry8JAhp9p5qI7+7dEWwXX6lAAsGybSqIwx2xxX0
	 0PTdHAyTxv9jwYgkGNgXhx5taa1lmVEvPJJTekMD7SpHQa4amPN6UzY0L+K0Ui9rfS
	 m4rEyJdZIQrVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6046AC46CA2
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170273989636.12761.14070459064685723718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 799f3970dbb84002b81e31a4444a72d870b0c5b404a3c230e678087ab69435ed
Date: Sat, 16 Dec 2023 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702739896
