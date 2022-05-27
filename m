Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3147C1851
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 12:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653653819;
	h=To:Subject:From:Message-Id:Date;
	bh=+Hr8sKi7PwxubopWtOs3H5kT4MLCFl65M7/4MdCpoKA=;
	b=Yqqc29V+m2sKOP+gXVzbEFfoGsGyfSJYD5BJ7U+cXWvkcz9Jy7z5pLWPmHI4n+/E
	UkXpwb0Td55i6kiki84OuJdy1iv/a00nxiMoPSSLTPF/UEvMoceHlVkvkcfs0n9yEaR
	0Wz7j4gpVrTR204Brpg4hbYzEIc+2qHXCEJtrWno=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653653819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+Hr8sKi7PwxubopWtOs3H5kT4MLCFl65M7/4MdCpoKA=;
	b=YVAf/DHxSNsoFIjloOe7APz7bsqZ1EmE04kYMBmWdwaeIc3mZeSog3Q1nJjGckvj
	QZgxjIbSZIzroQnf/y3M5a2mZaETMbeeVnY5wtjx1RusRMlYYRuIQB7XMzrRsy6b96p
	Eschm8KCVK0ybwu2d/84uICO3NrpwFo5QsdqaQkY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810572cfaf-2c7fd259-fe9e-4d69-9900-77fa1137c2ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1f5b3607885d2fb1be1f5ac0b492b34c041640918900b94c10912eb47d0801c
Date: Fri, 27 May 2022 12:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653653819
