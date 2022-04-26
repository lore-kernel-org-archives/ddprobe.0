Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4434D2C9D
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 22:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651013698;
	h=To:Subject:From:Message-Id:Date;
	bh=p+5mInmhbDDbJil3ZC2Eryq7KnGwLsbZP1rxKgABQ74=;
	b=d6O1RUPvHG6k2EqTo+SPK4lNeT+HuLj50ETW865tmNpzZwN9Z3SslsyyOeMqzqyf
	tQkZNhZ37p9ZKL1PPSrm78ejUham/26gBMtmVqD9dEKk+dI+x0K7vQoR738l/5Kc7QA
	bnRmK3Ljf60L/44uMtqz1oOnWlymXH8EsTgK2cWc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651013698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p+5mInmhbDDbJil3ZC2Eryq7KnGwLsbZP1rxKgABQ74=;
	b=D0xJcabqMfu6xNYLdwerRNi91O71o5jqdlQcFbZPhMFbFKtF+uHMl/HLEmWlJg2W
	3v374+mV5CVirn4lJhhhQR1gTunL8B1l6o1b64wticV2EH7mCZS0dNxQYe0eed9WI2G
	s1QEsaQfWiqc7N6MKHpPikagB3UTp6Z7FNvbBSxY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806815c37b-7a9a17f7-3c5b-4f3d-bb8c-a75c2e0aa697-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a2bb48c007ed20d7797f1d734eef46e67a613fcca82fd6dc7011fea4fd324d8
Date: Tue, 26 Apr 2022 22:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651013698
