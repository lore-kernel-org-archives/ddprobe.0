Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1628A7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 07:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655625599;
	h=To:Subject:From:Message-Id:Date;
	bh=NP2HE0DIAoFZpedgs9np82jdSrE8gK9xy033mtwQsMI=;
	b=R31TeYMDNHBvzA64mv03AV4xNShMeRnsGXU4G7Yq8qvGbvumBk7eIfcq1aNcLOuH
	O1a983m5XjSS+UwZvxXVjNkz7DkNBCq9rq3SyFgmigtI3tHXARugNvFVq1sQoOMzbC7
	LeGpKbA++ryhROOgTMVnbgNLopXQiegzitFO0QI8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655625599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NP2HE0DIAoFZpedgs9np82jdSrE8gK9xy033mtwQsMI=;
	b=RJ8XL0j91RguPMYn8ioSLs2AT+TgzV4jqvDg0A9a0tXIAIEExrU8GUWehPV7Gw79
	sHtUP61L+nXHNserB/3dMigBKcAW1XnGWPSKP57DhK4Gjofy13vWW3b+YCZQP1sVRP1
	ye2ZxTLUKqx//zpIzzcrB3HHzfuAPjuQReU2NT2o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817af9c8f2-0eb47571-e879-473d-a4d8-efc1d006dd6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6df051474175669d081f546a32db1d34e82f959269089192ac0978f5cd21c4fb
Date: Sun, 19 Jun 2022 07:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655625599
