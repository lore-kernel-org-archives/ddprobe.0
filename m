Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A75EB7B
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65CD5C433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664367653;
	bh=yujGlsNDsZFMCNW+VLoq8W0bNDvHrthI36q+QyKqNpg=;
	h=To:Subject:From:Date:From;
	b=nznGczOkI/GxOVtFMGAJ2VCMyKMBIwxbCPiuJ40ldUFQVNDcZPjm612jYQ8UaLZ9L
	 jDVGAcX7wKhOPPayDCV2btGBfzX2r69wJv4G08r0eGI19PPZLUkJZyiHS4qu3u3pd8
	 2YOacBSuNrM5lXleIHgfvlGsOfBP1H86TS6Fe0SNpNom5QyR0dN7kQVNFdXpueYG5w
	 j48RhgVVZXESlya5EN35uRSP/BOhnDB9cRWOFCf/ZEXA/ULwTNJIvzzUJaMhMRy1Wa
	 PaOoWPcyByJXU1QRZ6nbN3TBN8NpvGIlq4FdQ7VfirhNmIDKMGZfQBLvXXHMZQyFN1
	 4kg2HbQ0GmU4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FE11C04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166436765332.1203.7451717803882864483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 347fbed4a9f17d9a4ed5abe6ea78d6ec1fe49d56770248dcdce13c6d69436b7e
Date: Wed, 28 Sep 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664367653
