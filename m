Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C19562100
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 07:10:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75BD4C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670310655;
	bh=DkQ+X0JoPn6gdCJKc0x4bCltyhIj+HFvLUe0LHBhGUg=;
	h=To:Subject:From:Date:From;
	b=foS/JKCryJPJ1NL9UA+Rsok74pIzXZGKdFXSOk12oeZoHcFawjFWAwgyGSic69Faa
	 ZUgVh815mKMOBywMNDaj077uZNGFP+ccoyIj1i3yKul/CIrIBv5zYrT4WsOHP9QWy6
	 fEfnG3g+z587lZD5geDhECPmMs4z25UqNJTb82bhFOCoP4Qdomsv8gMVPV5Hvv1G8E
	 5kbFJw1Prd8NLmZ0SGzJK3sm5J4IXjT0axtt2V6ws+gn5/qUN64SpRzwwvB3vUtJFu
	 LDd/EJuigYuDNP4l4ngyex8r6eknxzFVqXjv5VeLZJvqObXX0sF3G4dRj29OYsECcW
	 glmQSRiBvu/yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B0E9C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167031065436.10522.11899602791012136457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e8f3665759e16058d178e659b7acd4b7de4337757b8f16aad74f4b39d1db3f
Date: Tue, 06 Dec 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670310654
