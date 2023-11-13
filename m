Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2019C3E461
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 23:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EiTi1kr/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90DFAC433C9
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699919897;
	bh=KmfYVUY6Sxyw/zEtztkXZsNbFHeLqtoTRG2NS/Ddgqw=;
	h=To:Subject:From:Date:From;
	b=EiTi1kr/HZCrphGJscdHLemdkFSVmKgkiK5YS66AhUA5HtB3KZd4xVXIXluCnK6+9
	 9ncnpK4MhbqZ7uKOTnuU0UdCszco6OMSSDzSRDJ8gprM9+E55A/6mk3t6yaVM2OkQv
	 Cu4ITTMPzAybTWiBqJInGdtsddoBlSlcSFo2x1UaFT27RN9cqe4dIV6OqmVTCHu3Cf
	 nrwWbT1uL+uANHZQhAcnEN36/U74RMba2EgkmqsWjIE/dsqZeHUAv4tFYGDytGlVw0
	 5foUi0s6zQflSfKvWDc5EhBCM4dowT0YnEi2NASJD/bet4aKxkaJDetEnDYZMhzWGn
	 uV4h+02ggGc/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 768EDC4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169991989647.22236.8103739521026607904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b51b25c7ebcd19b0ba8b9cafbea54841b5c4c4db9c62827ec0e294fcb581d8
Date: Mon, 13 Nov 2023 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699919896
