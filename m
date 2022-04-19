Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1C210E0
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 21:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650402178;
	h=To:Subject:From:Message-Id:Date;
	bh=GLiHade4pCjB6yDpoHfLy+uDXHRe7f55VmMbkmZRQto=;
	b=MdpszcGzPP0XZVgWoXjArGpKUycoO1Pc5BGv0czjlu4xWOdh6ckKO7bJX0pAlPiO
	z9r5/jdE7PEeam2Z3kxU4NfAlXd+ofCdlGuAKp8ZccpX2HqTjCwmu7wnIXKeJZAypla
	SyObqbNevjwMascfAz8f3otzLeDaH7Nj2FcTijXA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650402178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GLiHade4pCjB6yDpoHfLy+uDXHRe7f55VmMbkmZRQto=;
	b=FCXCBZrCnZ4XWR7V7plQ9PJkCt6D6pS9DQEy+/zkMBPJ+LPFZDPp8KJEEZ7D2DG+
	fVkjbFahya+FTOEmGNVf06LAE3tQIJMJegxOcinY+gkoabriNIeVsqXAqA58P3NtPK+
	8ZeIuKsSS6qt5zxf+jyazHe6IQSrgSPyZiCQ7NxM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018043a2b4e2-1c5202a2-97d8-4b8d-bf1c-11fde1d970e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7b6d011bdb3847ef3e1dfe28bcebc32fa9f1c566ced150b9e6546a5c395e133
Date: Tue, 19 Apr 2022 21:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650402178
