Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4130E600D
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 20:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657829212;
	h=To:Subject:From:Message-Id:Date;
	bh=fRCDJ4HFydfSzMnA9d+MLcA1jP1K4xs82PT0mLx7P90=;
	b=VWdjtUkTXRRS+93LAYqI6NKnTb8CM616ecC5j+r0yfjwsmv8DbxdgXc9KB8co+Kc
	H//bPIRWKYVqyW76usw6WUqbtNycaZM/+oMzK5ZAub2lRtEHlnsf5MGL6WLtPQ6xAxf
	GGx43PbkC6ibOM3XLjtVSk/DC2dnHDYgXeIisJ9Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657829212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fRCDJ4HFydfSzMnA9d+MLcA1jP1K4xs82PT0mLx7P90=;
	b=Z9fSCA21C5c7xY7ekgqY0J1kSCI+cLix4D0vUt9cX++DSvDL+8zl1pQmeyE4B4fH
	7lUsUHkUbaZCEAYQT8JXY17imGyfJ9SYKsuI/CuFAWie/A7KV79glw0hN73Mrgtj5IJ
	Eo0dtluzh8wtmQGDImacD2r4YeVEymq6NX1vuYt8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fe5240d9-b6c1b1ef-ddff-4975-8523-84fb349f25f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca4e8399130c1c4f36ab5a1f7a1976441491b3baf62b04a4fc7ad8c3e7cec0e3
Date: Thu, 14 Jul 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657829212
