Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FDA12918
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 18:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651430818;
	h=To:Subject:From:Message-Id:Date;
	bh=/1ueeIVaCSMdMWtTqTdFjRze/cUxQCrjP63aDgJuHUc=;
	b=I2F0wu42dzTECDEXk61uW3sDCiN19CF2xwVfccGoQVr70qN/aNatJxWjjVShdbaE
	4WYXUeoj36CBYxs816c5igTTnkZ+SVb4oXLT3zegcRYvpL5YrYgmSZ+9hmsOWzP/dUG
	C7s6LVAPlZ6B8YBQEmCEanxeAdYU7Nf5BRBo+RKg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651430818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/1ueeIVaCSMdMWtTqTdFjRze/cUxQCrjP63aDgJuHUc=;
	b=Uc7A1xPA+Iq2tHoWIgXm0hYJuIaUogTUbrPcrYVJ3zngBamo6oCUD59mDI97XqJk
	vUrAy3FydOlZnKDVl/XKsFqXylJWRt/cyvJuFNH15HNFJwtwDXsqSFu/cBJXUavv8Dl
	hReDzDDvR0TXZrXirzOQ3obXF9MrauYS82bCbsa4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018080f28206-64313dce-79e0-4162-8f2d-55e01c70a28e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c37bbae8a595e60ce764b5f16c4d9a4c9e5ba6f244dc59a1009059096e602d3
Date: Sun, 1 May 2022 18:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651430818
