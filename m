Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0E1184A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 08:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655194919;
	h=To:Subject:From:Message-Id:Date;
	bh=JVTm+C461M02eIF4wIq8c2qjPBI8Ro/gOzSRxRxRBD4=;
	b=gz1V3MHmyfcK9RYsCHE/Ad4iKadXLvDFpOrmBWt87oD3DVLRAm+WWKGkM8/W/Dfy
	inj0Rl0XQ1iiO3Hd0SvWImoykziVv4qpk1Unsomq42nWQ9gYKwC8jZfsoc6nXBZ2LfO
	rJG38HEN4JButFlWEg7LV8hqZdtwwPqgjEFzkdv8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655194919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JVTm+C461M02eIF4wIq8c2qjPBI8Ro/gOzSRxRxRBD4=;
	b=S8GB5bsKRfoXr6TefFDDwK0yQooNg9kJLDGi/ulnEexIKrmSHxCPS184jiSE4dXV
	52SjSf5oCki+xHaKc+hHV+oNm1eD9hPLdtVIsLQiRHOXcSyabWxGiyptjXl5cNoCoJU
	hanRavMuWHp/z1J68ueVqsaQBeWjco5qGIKP7afE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181614e2170-58af0c86-5ff6-4735-b285-731b00a63122-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b668dfc2c6fd9e87ffa7d1336aa8b453d60aade90ca05e6286dc95e97db74063
Date: Tue, 14 Jun 2022 08:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655194919
