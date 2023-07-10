Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80BB5179
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 04:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C96C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 04:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688965028;
	bh=cyq1Qeqkna3TH+KtVcjZbIm+8EUwtd/uNrWpeoNISoA=;
	h=To:Subject:From:Date:From;
	b=N9qZl5pTWpPBLh8R42BaIXgrZYWOEeRFTG4zJ/Yq3oSdULSCTNhO4J8UZTRmJWE7v
	 XgVdf4kQyqbDStMdUY2ZxarvGsUXV/+hpN5bGx7OPm6UaC8QUzYnwJh1DDYSMDAZnr
	 rGTnmcoGBI+FHNANHKuJWk1uRXg2xgGi/JpDorz6LEAlLQ8P66ai1cIo8xtksMJxkb
	 Pphmjx4gtmEP6Lk7K3YIxnqjAPPPlWJVbaNnCWk3AcDl66hDKpW0e0AAZ0E7hoEAQW
	 soTBTH0WX4VFSRAypJpU2Q5iI03JxiOy5dMF9AQeid3YnqLQKkO1z8C8aJXT+BGfhm
	 WlCQThLKxjLkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EC5EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 04:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168896502870.2793.10715989793384802891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f6b8ac6edeeab77bf8df8d6f8d97625ee6deb2d356eba04c20551690c68c2d
Date: Mon, 10 Jul 2023 04:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688965028
