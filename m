Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17ECD3FEC
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 18:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B61C433F0
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672857087;
	bh=XLC8gE29GsM3AH7FfW2nZgokg5OvZbyE7Yo+2S3vIzE=;
	h=To:Subject:From:Date:From;
	b=OZ3PO4Xsts/f0hhc4gjfNarNmgl1otfx5zUhJxy1H2vsilZhYQwHC7/oqy21u0WtP
	 okt/8hL51ixFk2piWlKk4VDboDYlVin6HD3z0kYlo3NTyGAEoHrg2OG+LCeT9f7MLD
	 mR89JHc9un22jHGWHAdNYdB+PHgyj37YmdMpfzoCIhQAfCD9tvEDX5fbQJadm2ftaG
	 puVSDDe1MQC+H2zg20wUjyaxqwYBm8WEa8/2yHJXhm2aLEtyXNs8itV41oQ3Xlzunb
	 hEp9P34y/uhUeaRYukgiJNh3K8QHnN08Oj+2Lw9uX2hI1feMeIm13+QRJ5DEM0IJ7t
	 7Y7/j/DpRn+Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7BBC4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167285708757.13785.12831926961809735643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0553932fee847ed22758d0455c12b93fee04ca9bf28833be62831465d283498d
Date: Wed, 04 Jan 2023 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672857087
