Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F17823C6
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660032052;
	h=To:Subject:From:Message-Id:Date;
	bh=+fObqc+JMPZz3E+Mbu9VMTBfrS9ae5WBwdNZ42dlnY8=;
	b=JvovH63LOqtM96WivnmocelGerQKLdKTBgYqUNCrZ6xssWuOVikxDGDhOyY0//Fp
	jfwwSsWNreTlI7AlJy59ojPCRdj4iD1o3UiAnANRWAU0bTdmnE8K2fhrc4idRuNBBP6
	UEgLBeKsGMgvFBygLs5Lw7BZysE+zDgRapROB22A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660032052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+fObqc+JMPZz3E+Mbu9VMTBfrS9ae5WBwdNZ42dlnY8=;
	b=S2UALyDG6k4J7kfeR/xE/5CErINRBP71D+bgu8ZEAa0YeUT4POOkRrZHRgo5qv/F
	C/aS6qusoSGW/aJDOPi3Cd3NLfvw3LDEY0/m2AiPhmIb6LX5TP6CCNP/lHzY5gORR6g
	k9miemAoP+72To97qjtpP6Dd4WwzCvBdxfasygz0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182819eed51-0054b8fb-59e9-4271-8728-24f005976f60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b9577150468263f131ca8272d23884e6e798cec14aa2689616906d67f836a80
Date: Tue, 9 Aug 2022 08:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660032052
