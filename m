Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A2684419
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 14:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBG2yaUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F06C3C433C7
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 14:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697727493;
	bh=tjlY7EvYI/cluLF7/MMh2P5doSMueR13/sYDkCRCqak=;
	h=To:Subject:From:Date:From;
	b=PBG2yaUgDjY+JtLQEPRE8FpSVFNN7bcHlo9DcAeolzShYk2cRTPvtpEbMWPoN3nFp
	 klrIC1UYB3i9YM1qCuUDd66iOL75sPRiLH4ROnSukm21fKbhGKkIE6NMOU++Kr1xxU
	 icVjqtowg5qnxn43br1OmC76bgtSw5kptEY7EPWBGHF5vrgg4u8VTSv/ub3lcekOX2
	 QflHa3YeMy6j1xnJ08alvaRsmpch/scVAfNsS1vanIHGRejv/wY2GnZvHsDnhrHrqZ
	 0mNqSHBBjmqdasnp/fRVqnNWYCDaL8KajH9Kk6r+LQfJbHOm0ZfnjKqchqTO70fuTB
	 9rydVODWet28Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9817CDB482
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 14:58:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169772749281.10856.2992690415530836767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab10b12a037186ebb942b5dc0a4715c35e5bc8557387e94586a019960de9001a
Date: Thu, 19 Oct 2023 14:58:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697727492
