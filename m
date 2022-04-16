Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A987B
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 15:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650123538;
	h=To:Subject:From:Message-Id:Date;
	bh=ndELPWVFagaq5JetYcxZwXF1Yonqu4hbkJYHJZJuMGE=;
	b=QFmkZv/P1688NCV5yPjmFX+UqbBC44mVlx74ooyu6TeNe+YsxioK/LmSdJQBMJyf
	jzr5McqTZ55nVFbMCEBvLY5Vh6S25XR1PGiCXToh2Z6IuQawFj/nFH11R73tUdXn1nJ
	E0bT4HmQE7fatGe0EvJNI2RqwXIVTwAe/aCQkXbI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650123538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ndELPWVFagaq5JetYcxZwXF1Yonqu4hbkJYHJZJuMGE=;
	b=LNEp5Qg63xXbeCFydxH6Jz/ubNqyGpFhqzKZzXCF5h7MOmsriMp8kQ67gwP2B1w0
	plO675FwMoPLvVYwekU5YT/aAcD3v+hgCUnBy7zF+nNxl6h8BZmbd7pWtisWMDmM1Kv
	0CTYaS31XTdyO5juJ6Mpsl9+dItBOYZbHXEDBy/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803306ff6f-2cf002f8-c85d-43e3-8816-51887ea64843-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e7273231d94379cbfffc3f65d9f4eb1d017976e3bca024ed4d168cd83ab4f66
Date: Sat, 16 Apr 2022 15:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650123538
