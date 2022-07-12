Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5396B23A7
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 07:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657609612;
	h=To:Subject:From:Message-Id:Date;
	bh=dDn/PFqw799v3TkqpLW75DrsgJdYd/ifH6X2VEPzKdE=;
	b=LCv6OPsHErf6tZafBvHQViP6pGS4quw3OL5e4uSPxlY88gHtqLb9tUjCxCNE4Aes
	+MVx4UNol8ftQ4wdJC7Mlt6/HcU/t5M+QesaAEo38p/eh0gBHbkE8LCjj+yR/PcXuGy
	lGpfwO0b5toe0SOvo05ecZKUP/BgDBcumGbRE/b8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657609612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dDn/PFqw799v3TkqpLW75DrsgJdYd/ifH6X2VEPzKdE=;
	b=OryYsOla0P2UeZhMJ1rhxDmExly/JVKfk/2Cx1ZczNTA4QEjzI/Z3Gu5w8MZzviD
	JR7Q3HBaqZKT4aNoFaEg0WLXVAWfQYGAcbmDN/G9mzjzSA9XtdSwjlTr7iZrAWRXxkK
	b0tktdapxnqasSl98gsWQ/PMrrCD0+jO2XHmK5sk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f13b6c1c-3e8474fb-7b68-40ba-ad64-6faf04fd5338-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e1aa50cd8a35dcb7ac168e03248d0e5cfd6a08491fad7f163797ceea08d5923
Date: Tue, 12 Jul 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657609612
