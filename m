Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF70E1865
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 18:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649700718;
	h=To:Subject:From:Message-Id:Date;
	bh=DFCUzpN2C9jIOzzi+/xPJy5glw1dh6IFw+G9naA/t+E=;
	b=D6DfuvgsHEgOmJgYFvBTdFIo5HNqHKAdfbSmsfKtft8KlcKFi36jKPa5mUTF9FS5
	YBV6cJLB8kbaf6ZOZ19vjnoqpp+Hv/hyc6lvrcb6qXKPaDEiG2dKQqCwIOMQAjew4bA
	UgbfUWeOiOj+Oj1tqaVPc1auPk+sO5VViRF742LU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649700718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DFCUzpN2C9jIOzzi+/xPJy5glw1dh6IFw+G9naA/t+E=;
	b=Lf0TbBP5yTsAj4F78K7nrI5+yTapdduC5Syr2NburlmBhUqlGIuc3cQyC0jAOAIB
	dnHCDCQffilKNYucJumAxip8qLI3lIaL67vgOWjFixmBuQrh09SLBou1S/ee+kdQbv9
	RftAU2vNwdqpOrWROIzGB06SjS0MqBcsKXFJjaFU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018019d346ac-d68a9797-5786-43fc-9bd6-4e74940ae9ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85b1ffe87a141c4837e45fd00ee604968114075f85ed5ee8ffea459924af37d5
Date: Mon, 11 Apr 2022 18:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649700718
