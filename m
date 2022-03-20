Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C64083FE6
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 18:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647799885;
	h=To:Subject:From:Message-Id:Date;
	bh=FV41akrztjwRgNAJjl0kCyo4D135MOmHaWi4/5vieiI=;
	b=JWiUPT2z0+KsLbBiaEvg1y9AuYVa9OhWObMvdWKP/KBL8B7PBhu/aiNqpoMiSbH7
	fikUN6flgCFruQqfNWUzHHriUbJUJA/RjMrwICJ5Q4OK65QCzF98SwtFqDB/bPcPmof
	KxNx6IfiOna07Ky66K4z2q2JFVDM7Amzvv9Dux7E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647799885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FV41akrztjwRgNAJjl0kCyo4D135MOmHaWi4/5vieiI=;
	b=cxbAeI3gTPjeBs+V+WCRAIKxd4lxR1lhB+hatl93QGaUVmrFNWKel9tEoS1DulaZ
	9omeTjABmZstafi/yrPkRHar/ZLicRu9wIKI4wbz+L05DpdqZ/h6yI8p51Lc8o0DIeK
	3HMjcqhvQf/2cYur5putZmJ8WPS3AM1T2mpfDDz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa886dc0d-3b20ec6f-6825-4553-b2e5-10936690b108-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4a6f9bbaa8997ea37a7caceed17e254295802da476d20d0c46d7a047f765341
Date: Sun, 20 Mar 2022 18:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647799884
