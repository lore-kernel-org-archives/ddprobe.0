Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4552B136B
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 18:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651168858;
	h=To:Subject:From:Message-Id:Date;
	bh=ipm/zbMGSlX0thmiLj7TjE2pMET0bjmwyHGxVJ+5iK0=;
	b=HD5KulFgSLT/AxVykbW815A7y3qhrHQFHfjMfZa5neCxj+HebtDUCiHdKu+iDaLI
	VpQIi9iDVB0L2uwwKv2/3r/3GBexhDpQKKK7oUE1Aoh8nsCQnDonkKGDchT2MIDsSTI
	gvd5IP4JKqcwz+pUoUOxgORn7G3TxM6OP28irc4A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651168858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ipm/zbMGSlX0thmiLj7TjE2pMET0bjmwyHGxVJ+5iK0=;
	b=ZImE7Y7nbRt2P6cZvSlHAanNeZlEp3UISVYEk32BFcN2im2AuNLaUbiSHDN1szO/
	Ex6lb+12rzV9oxv8jVjF3OC5jPbehg34lN1F09uhLlW0RI6ZH69PGk73NkaAwcqs21O
	ObSkuhpB+b7uQWKAnCz+gC00n1S4tz6J6s1S5a3c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018071555091-4263f60d-7842-4e12-974c-96d3cba755cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 990d4c3f58cb56698976c36fc12d4e84123c4ce7bbed70fb7eac41f352385f53
Date: Thu, 28 Apr 2022 18:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651168858
