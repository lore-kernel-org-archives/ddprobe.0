Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2676A7E3
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 05:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649482018;
	h=To:Subject:From:Message-Id:Date;
	bh=vqnUmD4NAzX3MXdUoncIcOjlaYveN21IMTw9cxpgM0I=;
	b=A44ANK3bcXCy/zr2j4AWjTV9EzOgwzX9gBqW8WYcR2o+XZFTCfcmv2Anexp2Oic3
	Gop2N+ArXNnzBGy2/fIEyFdeSlZ+rnrQhtiPTLqhrbV6wil3+eWjSmdKn6J1Pz7sbHS
	jtqN3VAZrTqWDHA1n+uwHJhayQA8I8yS8CZlAqWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649482018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vqnUmD4NAzX3MXdUoncIcOjlaYveN21IMTw9cxpgM0I=;
	b=MqNhqj0p6T5WZGxToYh2/6RDDyev2xmtPZVz77USWxXpDSR+gT443XtDFXhZROD5
	7rsr0Qz3k46nad1P3uN2cNsYd+FhUlhu/AsD0/GLsiEM8oLI3ODn00SbrDbEHriSf7P
	UMp/vA0Veup9nGslak4mka6OBdO9m8imiGDkhd28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800cca2e04-455fc0b8-70be-4e8c-a357-7c0fd1ceb493-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce21db85cb10e770cf7bb0b92cb3d3427a2005037457f368dd2c7ccf2d7e0500
Date: Sat, 9 Apr 2022 05:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649482018
