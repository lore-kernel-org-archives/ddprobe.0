Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DA12F3E
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 21:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651440358;
	h=To:Subject:From:Message-Id:Date;
	bh=kQe6l/n2/2Fx6VUxMr+hC+gYf9ToHUXjcn2lxQSc+5o=;
	b=MBSlADa9q7HBJC0vdqLDBvd74V44b7vD2XAZzgHMjfadDBFMMbfnhGtF2w9ImQ8q
	UjhDRCBXfmC5lsAAY66s91LoT/4nYl1RgmhKSzIQ4Lu0YM+MjDPNipD2YpcPzyU69XW
	903R38xuaNmYVvnBDaD2o/GexjQZ0rjhz2CDSFWU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651440358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kQe6l/n2/2Fx6VUxMr+hC+gYf9ToHUXjcn2lxQSc+5o=;
	b=Q/FUmzRF0LrRHhWfXzR2hKxkY0QPWS+6AR8NApwiX15UItPEn87sYp1tdWCMkDIs
	vVeeRJIGYR9rfWmy5dQIGbuKoVbP9u60fPhgmudCmQUjmYGkjQnB2OAhJ5rRV+/bckx
	NUmxSyCl5TyahLRNH/frCv9MxqvjWdP24DrjSoD8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180818413c6-845f80c9-63cc-40ba-9b93-07fddda2b167-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd95111c9a8876c91b7e6ab1778f68521f075a25fb3a08a3d8053041926a5db6
Date: Sun, 1 May 2022 21:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651440358
