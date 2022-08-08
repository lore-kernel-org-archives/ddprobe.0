Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516B03C3E
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659972652;
	h=To:Subject:From:Message-Id:Date;
	bh=dZJ3Hesw+QD3hJASGObsf3OKfPLdYNB9HXv/K56jurg=;
	b=NUYqnkczjuWLBRNh2h4jk+WQ+pmJq98CHk4c1ZvF1t7ce2I5u/lcEal/F1inwVjl
	E3vSxxh0kDwRhp3vtgJZSYU+mo5ahxjoOSc3VVOvE9sy6Zt4DcuETlPtPWEZ4P8UTrF
	Ha/U8R1jdz/md0QEN6O0AodwSwF6SrYE9gtRjiVY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659972652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dZJ3Hesw+QD3hJASGObsf3OKfPLdYNB9HXv/K56jurg=;
	b=ZXOumod1FEA5I+E2Jrywa4TxcTIbcoNcRj3KLOy5UQtTS9ZfljzsVoRU7L4W0c77
	/kp8OsuYLjEmFVDse34tPR+eEzB0o7OJyHNFfzI/Yxmkjk65gQDmkQ1PDeGib0vjyuy
	Jr8Lp9Tn6Hm+qZ9pbDkMN5Mp64e3vcIyam8AcSU0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827e148e03-72a13777-a3ef-4322-9318-6abb64951ea1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee5965244674f19bb90aa835ddd8e1b9e92fb8c8d3194810071595c78f546b32
Date: Mon, 8 Aug 2022 15:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659972652
