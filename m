Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E5552103
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 08:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653208080;
	h=To:Subject:From:Message-Id:Date;
	bh=Ro7WwwyZSZp2F+L7eXPAHbpzhul8mjAhiJeAuNTazkU=;
	b=Mk+BYM4JBrs+2E7Rt26wtGCq3HOdXMx8NUWiZv1lUw87GkRGTwuWTPdwc+DaEAIk
	OvjM81YJ0Y9W7ZMwo56g/GukS4cfWKMNgF8unt3Z5kgO5ESEcLS0nsKuZ73oMoc47Em
	pE6m+5uhPNKn2k7GsJHURONIVSue/iWBj1dLUtl0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653208080;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ro7WwwyZSZp2F+L7eXPAHbpzhul8mjAhiJeAuNTazkU=;
	b=huS5Ki390wop9ZOuJUL+ULoocHdt96GLe+5TnBMN6IG4W5wPn7Gsvw6mRwJnOHLP
	YykeX1ZsitSES8UoKP7e7wVp0Ouzj7ixoPz1v/aiOEZQ2FxAwtolpNsZbb1EfPd0znZ
	YUpvT0OzypApkptBrhYwLN7PEqICSN+p2vNsI1Vw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180eae15bb5-e55c96b4-5627-42f6-8fe7-4859b8dbfdb8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2704976479f62a2cd5477db2df3b0573c32090ee4fefb3280803d0094f59786c
Date: Sun, 22 May 2022 08:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653208079
