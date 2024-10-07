Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477B712B64
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728274554; cv=none; b=qlajeFayvEiaydsF3ectK+B9draOehJfwrHxkOdkRWCdAkLhSqWsJv5TeG0mTkldXiaWAuEg8hZyE0jv6gX48bw4VN3AVkfpiSCUeUQ0BLctVE7qMRCntIG62953Lr4KwPAmiAK2lQ/j8CvCinPRmTFW1VnvEkSLk+Kmu5/fCaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728274554; c=relaxed/simple;
	bh=/kWxZnM5pEAb8wbdkW5I90MketXNuJ+0wslXcFKK1iM=;
	h=To:Subject:From:Message-Id:Date; b=JwgW8rWxQ9iBGzic6TsKmigWMptgyPZbOZapJFmxIzwzl7Ja/AnutLQFovUNLjdKvCRirA1a9tl1VaEcHX9zzNJ/s8wDI8oHjxB8Sy05WOTRqN7FuU9XW9JS/qxqjEzl4t1YwDQx02h+TDslb1/OnwBy/pm6rIoM8agqdToZHQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tqcf0HlG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tqcf0HlG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1362C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728274553;
	bh=/kWxZnM5pEAb8wbdkW5I90MketXNuJ+0wslXcFKK1iM=;
	h=To:Subject:From:Date:From;
	b=Tqcf0HlGIUGKVc4AjnJ1j77kAwR3pfsYC+3BFLeouhjjauLMBuAYAyLVlf2Jg1glw
	 FJ9aHIqqL6jTCtvt348pOgS3KI8LIwpsDBOz0+MKEax3jGj2y2LQ5vFUslsXyeD9XL
	 MD/teBbWJWtEajW5998r5BeE5D3EP9BQ3vDz8fC7iGkncIGaFsKO6PAxlUbRsjCmkP
	 DSnh5pEk/Cr4P79RIG6gPfkviYYif4n1zkgaZr/xgROtxvtj9M3CjptdaySpPckS07
	 OorjiTfbPYkfob+Rprg/tW+uHqJ/DZVxk7BInHtMVr1adOueqi5Ozm/wu2WFfuSUa2
	 pzsiSqKGmOYGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCC4CFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172827455362.18778.17319135270558433938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 604f3648139524ea7f557c5334c847153af2e9491014bfa2baf9d07451298c12
Date: Mon, 07 Oct 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728274553
