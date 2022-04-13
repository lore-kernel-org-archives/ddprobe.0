Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010087B
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 17:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649872498;
	h=To:Subject:From:Message-Id:Date;
	bh=1rqDHEd0gPyImaaEm/C44pjIn22keape9IsHpteB/y8=;
	b=ebgdFiT+xSnOunMiRAThON8aSi4/tADoG4hdKtXx62U4sPeU7Opy5smwfoXpX4yK
	76kkVyML6RfIs9qBjm3e2oIBNlw6fzT4izORDhxh5dGBxEciTItrGGBwizEaMRSbCOY
	TX2zSAAyPSx2aluhiu0wGsMMZj+fPkX4b8EgFyYM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649872498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1rqDHEd0gPyImaaEm/C44pjIn22keape9IsHpteB/y8=;
	b=CS+8N9PSUK7Jj3flHsH3PQTZfX9ubZmW7FKHbheTce+wCENCmQPYko5s6DDko2MX
	kF6MqGw9/jBfu9iSA3W0k0VmIKLCn8rC1WXVYGmPGVuRmbm9ldBc2Y638OG400lWppm
	+THcVElVIYV+Pcaf8ZiepDuAj1au3pOUHmis4nW8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018024106ea7-26ea5ec8-361f-432c-bfd0-23fb57e95797-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da1b79dc0b9f8e2c81e4189929f32abc4ddd9438a95191661925cf0e134aeead
Date: Wed, 13 Apr 2022 17:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649872498
