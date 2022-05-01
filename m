Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5968B1FCC
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 04:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651379758;
	h=To:Subject:From:Message-Id:Date;
	bh=Zl3qTcYm39twGC13ldwC/YM3jE1mYIX0Y+7b+HQqchk=;
	b=X9Nq8hZMswSNazfSbSzAXRL4yyISbFKr9v7HOWPotCpwPtdX+9/e+Z+J5x0rQmsq
	mGP1nnVh7W5GA9VXNFOdmH/DQaLpv13Y4rFr00OYJTBsWyhTJY/nN9GPeRN261X8z5I
	tjVcdpuplpbkbzFfe7Q8n7kzkt/aQLzME1V9XzT8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651379758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zl3qTcYm39twGC13ldwC/YM3jE1mYIX0Y+7b+HQqchk=;
	b=X0OcMjy0lJlErNxOtHz7O42lnbeflfR3KZifeeiFTmbWS13FGWUzqaL5pPlPdRhb
	elpudGnpk/FFKjBfGPzqf9+SdWmgCjTnJU7gmjzmn9UcJNQeZa49wrAh95IJ3YgzE+L
	l5AGMEtuIATZZgIhWFYjzG4yi4xqnVVVlzBVokpY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807de7653c-e698f57e-97f6-4c8b-9736-e27d4d17c106-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4450b1bbd0c944a099fd10595e8cae92add290637e0e939fe04ed3210a3462b
Date: Sun, 1 May 2022 04:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651379758
