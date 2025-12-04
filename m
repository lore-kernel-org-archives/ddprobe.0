Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3749132A3DE
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 02:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764816774; cv=none; b=DW1TM5UgTP81wJCcLFZwW1xz6ppZ1URTVF5yQY8W1pAcs02Dl2j2/QEPV9NzV8tSFr5qWUqSsQZvV3IUU1l9koIsrKN0Lc/7Vpx9V2uwMZov98nz1N9r2xK48Yb2ips5nlG5pkBc9Cm/wkrLV8BLgNvBQ5ODZivzLqzYOqrFpqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764816774; c=relaxed/simple;
	bh=cIPlBmAFq7j0Io3UMZXIVRww4aAVGAww47/UHAnlL1k=;
	h=To:Subject:From:Message-Id:Date; b=etvUWbGsZnjAocJpJ2U8314xCUb4qwAj0TMIoy3lDJTpYrBmQFFTo8S68hnTkrV3FJE+UknNDHirSHBu+GGYuT5SF5pnc+Xtz9uiEqbda99eGXYX03ivVUGR77GUqMfcLVhKoxf/uPxV002AwB1G1l4dFgw03hjrd+g6B+oTc/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgLiagyw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgLiagyw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DB6C116B1
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 02:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764816773;
	bh=cIPlBmAFq7j0Io3UMZXIVRww4aAVGAww47/UHAnlL1k=;
	h=To:Subject:From:Date:From;
	b=NgLiagyw4hXmSjLxc8NN5KA4UAT/8cG2TXoc02Ek48PaEbaiQph3s6D/yEdsgb1eX
	 v0vNGTmwWaOID845MX+X7Piv0ykXt7RAVVbwUKQk2pC/gIRZk845TdktqVCdmFw9cx
	 5B4nOM1uJclyMSuu1czG6qetIJmVQdqChoe+rYrsRtU1Siecg6GwnB/hhfhBjJDNgj
	 vcfiGK42iBY5hHgAo7ctLYGprd0cFWD2p5SbZqEUKXPfKl5pVKl+fpKXsG5SuSVQgH
	 DgU3ix9hM33jLq7dbztmG7YktUhz7aHs/ZG2Pifh1iVcLigDUvu2E69aCxX8kWIt0z
	 q+PK+jMy3qJMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99527D1CDC0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 02:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176481677359.26589.15134157249270608691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2913a8cedd1a69d9516b442c9fb440821606532a92641502d80630b1977f9d65
Date: Thu, 04 Dec 2025 02:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764816773
