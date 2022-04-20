Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5197A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 21:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650489538;
	h=To:Subject:From:Message-Id:Date;
	bh=8qo+8FrbJXunmN54YP7Fh5jWo97Cv8PyGVM3enHYzBM=;
	b=Yft9PJ6wxqB5/2m9VaguzNGXPfP+lxaUIQHJfm5WgZ8fvwTDtnuPNMpEUb5AiRif
	30zRHfP5LUsh5t7l4NhBW09yM2yS+KUN/jJA9MWo8U0TvZIbuMHv5mxWgdTyQps6tfZ
	GdVu6QxlPsx15AaobPc6X80M0B4NFKTd/pPyejbw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650489538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8qo+8FrbJXunmN54YP7Fh5jWo97Cv8PyGVM3enHYzBM=;
	b=HqvKDtUCJwJC1OKXar5OvLD4eF43vQ/AxugWDXt+ij38MAWsWwkp6ZqZ/WMS/11/
	lRReS5T5gyoGmQ/0Cuzda564UYBwh2/Mz0Tg/YMINoKELjnbpisHo0SluohXqZCVP/b
	gyKopHJ7AYBtU+jWNvphkGarFuRg31XfN2CLNScM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018048d7b6fe-b2ebf44e-4804-40cc-a359-cf6c8f17e20e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd4daaf3239b5330cf090ed10dd6aa0f200a6385e88b6e051fe017685ccaa161
Date: Wed, 20 Apr 2022 21:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650489538
