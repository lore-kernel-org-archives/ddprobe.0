Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E332EBD
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 10:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655028240;
	h=To:Subject:From:Message-Id:Date;
	bh=+bWnmG1Vks93Tod+ypo5GlqAtMvCiAKZFrG6BJSSZAQ=;
	b=DP1uyHo2KMNwPkE4LzFUclqu3GsEjv/BmkUpZ9ld1nXVRH08xVTMBxWeO5nhh8aW
	nJD1pmoIOZnNbVvoPcuDJbHkyf8S05hP2bghK3va/iR3RDtfytgPk2Dsx/Qrlxp2gZx
	TrrMJv1r7/SKAhBGzuhT4njzIORjTZV/aVmWDAJ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655028240;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+bWnmG1Vks93Tod+ypo5GlqAtMvCiAKZFrG6BJSSZAQ=;
	b=dUWTKiNR3kxOA6Nwija/ZCI7c/cK+wUwDHgLYpqabfC9J4fIMEjjU3BRahAg1bQ8
	RZFt2RiqNDNXyTbIhOfGT2UUD+zn+1wPrQnXzoJeOOSgrzcwfXRxiih6RCxQ1P2MBdT
	2GX/aNyWfVjbacCHp65nnts+TiJofl8gSrLbODZA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181575ecb94-238f88dd-e57c-417b-a965-66be50be171c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1bbb178b67e62373c0bcba322b6de2d7365968bd8ced10cb52c15f358a911767
Date: Sun, 12 Jun 2022 10:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655028239
