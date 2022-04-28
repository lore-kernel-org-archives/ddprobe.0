Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DB37B
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 06:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651127218;
	h=To:Subject:From:Message-Id:Date;
	bh=3d+1CgUof2mxG/qoOHvd/9PZE0L4uuy1YSvmyTc5JnI=;
	b=UXXDR4874EMQoXDmEiSD2kBN71/WAg/+tygP63Nvjk/zncrBuTrYKxwxfLwTGOYI
	g5HpgQIoRNfDm+egEIoQI0IuzIhi7rtr/Y9pjFBRFh6MZc0mUjdrD5tQqJuoh5FsXyS
	pRrpr4iZhR130R4yFFJ1NFgxZdKpmQelf7siyQkU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651127218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3d+1CgUof2mxG/qoOHvd/9PZE0L4uuy1YSvmyTc5JnI=;
	b=eVJ5ckz3Oufl8j074ZO+1/sGpkk5DZe8f7+b1pPAy8HiEgyw9+1UN7by6Otv6GQk
	pUYm8Wv/57FTMyhiwHUzQLcZrKCJEb6C/UAzVIRDK8JVnir8s6cn8YA1tlyjgYHK1Ir
	dPcNHdsaf6lKft5R/klx+U8F9l15vhYLcJiXNU64=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806ed9f032-23d9add6-0fde-4f2e-8818-afa128c36629-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1b2ac73f45c46c9e2860a8f8013898c05557ff3bb31dc6a369bb68a45f4b41f
Date: Thu, 28 Apr 2022 06:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651127218
