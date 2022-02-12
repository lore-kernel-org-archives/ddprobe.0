Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B1E211E
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 09:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644658216;
	h=To:Subject:From:Message-Id:Date;
	bh=oFFLf4XAyx2wSTyxoVhYywEUNPkzGHK8H7PJlYRe5xg=;
	b=BhJ5AJvtfEOYDx9E60Aj2vL2HtiP+/vdFC9V0xVTX/LIZMp11wWSLICWhyWu6kCD
	foj9as3VYQUW2t1Ye1AWxY9BrWplT16pUbK1HiivwraZLhQa9Byzg09+SjWTHD8UKBd
	jsCPYemZ92smnCOvDvdSwv7YNv/OOibJ+jJgdHXg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644658216;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oFFLf4XAyx2wSTyxoVhYywEUNPkzGHK8H7PJlYRe5xg=;
	b=XUR+yj8tZ9IKAzjyx2423t5ocvcQQi7l2MzNepm3Gvbcand0Xw2EgIk1i83bIKEr
	xbLxynM6KA1fx2bY4ISrVQhZOKAPjll0t0dj8sqDGGnGyDZIVGQJmKlH8ZFqF6rghhX
	0cm1J0BiwIH2eS2707ApiWFdt10you80oHtp39H0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eed44cdfb-45907d48-5aa2-4ea0-9b23-46f1f37e2ad5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8419aefa7b935cb798360ae5ff73d7a9e07a901684b556d08b2c2ba906b7602
Date: Sat, 12 Feb 2022 09:30:16 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644658216
