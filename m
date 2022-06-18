Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36C17B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 12:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655555339;
	h=To:Subject:From:Message-Id:Date;
	bh=0Ze64qYejT8RIP3jRRzziai47zIjH2d0ZfhHkqzM4/A=;
	b=Wy13BCSuTQSpK3+eLdLY5xbuKuNOjtzhMiM7StXtxyOs4jtmp43mUzGguA3rUGeY
	cBnEsBVE0orIMQeHHeSCA2Z5ftasJ26cBZhTKIe7ZG/xHA6YgY5SuyueLytSnlJV3SX
	91z/hBGBBizyQNXKMv6JiU+zPvwaEVdL5MC1RafA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655555339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0Ze64qYejT8RIP3jRRzziai47zIjH2d0ZfhHkqzM4/A=;
	b=K0ZqvTMJudcFdRJm7Ni0U0hBlmMIc/eELb/Xuq9jcnY8o/vg7YctWFhK69MVP6mK
	ETcCnpY6qFIEPm52kRSFeE5x42RD7ZcjwOsmoHYwHXZE/eDdYGPrJKnjaH3k4ja5QME
	ENDNeUSu5xIkx8E/d1zthwTNPedNmkq3J1cXXus4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018176c9b42e-5ebf2390-9fd8-4180-90b1-87d6a7e4916b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8686993460f995117924cbd23f9c72661743d6cfe434767254a08134cfd806ee
Date: Sat, 18 Jun 2022 12:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655555339
