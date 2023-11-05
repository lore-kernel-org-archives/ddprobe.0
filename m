Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8928C01
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+RVg13c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80648C433C7
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699175896;
	bh=2zd3ETVF/5hTHb65NWgkylVwlYeh+T60ljRo7yN3+cw=;
	h=To:Subject:From:Date:From;
	b=j+RVg13c59jMOO6x02hN2sYJxJO4ejyxNu4ADdPUUTG0v1IU7HCnZxF/1SPS/q3n5
	 6mYSYrGB27hAn1yjo4z6gEV1AUtZ5FsLjpLpJFJuMwKxZBmkJ+J1ZohKh9AhmtN+Q0
	 n7iftySxhjBHX9tV2zVxePDsVDp+UjSuTcBHfJcZROKnGx4My90TrctbxdMHELDrJy
	 g9oo4kYASH3mJAjNQV07i+lapSUh32QkmGReBaRZjTEkIgj8LrQhAGtxzznBIlSZXN
	 r1hgm+vwUB/qm12Pk2UUNZ3xuQlk+PZwzOZ5foRIelbDej8UAMEUTyL7GW+KUeuaIo
	 oFgoP5bRu3/WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66293C4332F
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169917589638.9234.9767645636059083066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91ef8c04acfe8a55f5d484973d8155e891d8595906f919bdff93527befdf082e
Date: Sun, 05 Nov 2023 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699175896
