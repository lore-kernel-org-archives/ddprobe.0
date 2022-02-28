Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8622A15C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 20:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646078785;
	h=To:Subject:From:Message-Id:Date;
	bh=0C0CGnqf0Iq/oM72OvhnSArh1Uqrx8yivzPW7dmiYlg=;
	b=NGCvZM8q3ZiZaIMiH9+G4k6YgwuZompf6O+U0luuyQFhwOXLlOA1EQsTjE5Zwsmr
	mM8AuP/gc+hc60PT0HEgpIuV55BoqfLbsSeniIFTKVTsv7edZfUTR5Ag+w5kWU7MnuY
	Jqo7foZBFFIBZWoySmSlF5FMrU6l9sdrtff72Rxk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646078785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0C0CGnqf0Iq/oM72OvhnSArh1Uqrx8yivzPW7dmiYlg=;
	b=l6boGyYRsf6YBcRklMOb6vHzqiTrmB/C5HYuSOhTne3AKrbjCIHK1CUaPB58RkLz
	9iiq0R4bqJwtnNTacygxfwSu8UMFLkQa+pA4n5MNBT1KC3XDf+MdaygcqV4gxuNl6/U
	s/3BuuBPLRIXI1h1Y3psoUj7h1LIHeQpxyGjeq78=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f41f0f4d8-46414025-5441-4ecd-b0ea-b98ba98857ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ceb5b592ab5345d51144734bf3153e38dade7ad35064122d928f22bef2edbfa9
Date: Mon, 28 Feb 2022 20:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646078784
