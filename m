Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B2D320E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647743784;
	h=To:Subject:From:Message-Id:Date;
	bh=mOvd+C2UtBeZwC+pEcZR2yBwF7ASdz6aLntCmx7onQc=;
	b=boRqIhBlOLk6ZQGMU6rPIwQ/N6hT/yEeiDnc2GiQL0jfoxAuLeW3qEfyJRHayN2N
	rknaqAyYI5Lkb+/g7oGlwSlqcPpxl99l+DSZiXisrO0gwJzyBykL0/ZwRvyEVuvYs72
	oZwpwfa0pz+IxMw9K7Cy5pfNBnSj7OgM4IRcjn14=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647743784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mOvd+C2UtBeZwC+pEcZR2yBwF7ASdz6aLntCmx7onQc=;
	b=OAWFJos5SPhGNEyVlgXZ0sWdGWKdtnm+ayEPmnhYqF/cJzVRpV0cJ2zPYPRkvn0P
	zisNXefEWApkcVIBvvFyPNLFCDv+qE4n+WDP58RlRjze+injAfiJNmAlgJphD2g/Amw
	n1umHQo0acWBIwZElK8Ko/Ygcy99OiE44rpqbdLk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa52ed738-c59365e4-eee7-4089-ac7c-336ccf82195d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51f9456f5417225a0e3374f954b4b2be93a57499c1c7f28df7277a65f19cc5a2
Date: Sun, 20 Mar 2022 02:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647743784
