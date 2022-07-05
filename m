Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC942F39
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 19:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657049212;
	h=To:Subject:From:Message-Id:Date;
	bh=C1hyDX6qBuq8iJlYTfOb/UV/PcQUf4SbCs0JXUfCfMg=;
	b=fsKSZ4NBsXFXQfikBQsdx88oJDilL/dHusmhbf5sUrRriZeOkyo18tBVISi3Eikm
	T/trlR553M5hEfYPWrwWgqfaKVqNfrEkYrtnpQSLtOsY8P1AAKPg8oJ2AhkPW+3yeDp
	u016uWGdfRLE9TP4GsxKdbMC+2aWBDP7k0XSY0Qc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657049212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C1hyDX6qBuq8iJlYTfOb/UV/PcQUf4SbCs0JXUfCfMg=;
	b=foHi95S8PN6xQZdylYPOhk3quwNaQG4jSy2ItWzN561M90Ut4nrTjfto9Xnzecqw
	jtq+1nhNZYESb1ILTPDjYx07UH4LoZmmD86JmNAlFX6iNUbG8w71BVfDrH7EnyR7SAE
	k/0ne8wV88yX7CDyPIUxly66er4U/kpaNXi4KYZ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cfd46583-1a3c0c86-c699-472a-9149-6b76e36dc895-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 934abf8f163b517940780d1c7e184d7c26b6169dd1e59645592ed6c8ccef6cf0
Date: Tue, 5 Jul 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657049212
