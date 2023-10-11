Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7005220332
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 15:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scQgIkq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75DDC433C8
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 15:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697038028;
	bh=sAJPzVUYO2bPm3BVGF6KpP39RXdHzGPnNIoYhi3Ns3s=;
	h=To:Subject:From:Date:From;
	b=scQgIkq9cayW6xXbNjSDl2R7gw85I/DJUZKTShEkRBEAHU+I5q+dluVKBNZAAxlrh
	 TAI2IjEpGVa76jE8A/UZ1HCPhIZvfj3ATiPHeqMeGMpGN7TO/YW/7vQ6lulYVqe1Zl
	 LEplOKomOzuroEkSg63cPzZcCur19FItZZgzusJIo1Q/bo8/4WZt6KQPqM3HRkwcfl
	 4DDr0dW7FrOMc9gpngQ4i+oCFOZ5L/OGOgVoBID6mZK2F1ZPksQAq5c9oUqV8k86HK
	 hlhq0nY+W9F2IuD6jaKgqX0ZuopYCrRggvpfNIMB1hvH7GR4l0mqvs/Jin8WHRxbZU
	 OTYt+jZvZVEPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD232CD6E7E
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 15:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169703802876.1494.16695710194541741205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53cd3f71bcb71312a37903ca7f958dd9bc38aa828c41bb6792ec192641bde21d
Date: Wed, 11 Oct 2023 15:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697038028
