Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8368645
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 679CFC433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664259053;
	bh=hyRo6y+VgTpjKVx9fbXeCOrpO4iOv/pPKNyXuGcKW9g=;
	h=To:Subject:From:Date:From;
	b=kc5iQfqnGmp78peQ+a/SIbZwYEEsy3tIOCXlSpF1NSpwXUUyavDViX4tFr+fVwWRM
	 rL4Mm3iZj2j0EemWSAni28hjg28TEz/QboK1XWOt2eApdYT1z34pU8HDQD7dGPKENd
	 n9ySavjjqtyxBvXB7YZPtPsJ7+DvOv9tz2JGbPDFO8DGIdSVrvdqFnh5AirxoX8QJb
	 jTSAE0PYI4pa1VDFqpLiZmT/S9GGjjBaEApd9Ga/IRembloG3ytgimi7YJ9nhSunRr
	 60D009GDlcceqKgOis1ebQ/fAeFVP/D0vygG86ehnId19m3EBx0H3Ub4uLHmipJlmU
	 IhADCW0y7MVaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 508AFC07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166425905332.8020.14572086284175808350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 773754957f3154d7fe7425b95d1d422c97c61f719206bb24652a15441912b692
Date: Tue, 27 Sep 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664259053
