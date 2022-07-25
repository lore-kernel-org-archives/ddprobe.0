Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFD11375
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 13:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658754412;
	h=To:Subject:From:Message-Id:Date;
	bh=ePm8szrJ3eBXgd6SiVwyDKK8Oc0W49yyib5YppwCm+o=;
	b=i09CrkRGBx9VX1+o9YWvu9m5Rhb9ntVvXFlvFQOu5+3L9lsKggIbcla0BKdmVHyp
	URCiFtUOrzIWZNZ0aRgU+nnlDUK0L9rA6hzFGaE4sROY/e5+ttmgkgvuw8B4CPhY5eF
	KZVBuPd9/bNaZBw+8EnCULO88BAkNrhMJatZTuEQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658754412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ePm8szrJ3eBXgd6SiVwyDKK8Oc0W49yyib5YppwCm+o=;
	b=SrU8hTVUeczJQMX1KrAhpfSCFw5iGo7LTHCBNSEgdyBxJbQuhLB7Jy6SaB1ugS7R
	4jLrNvl+3Th3KczWJSjEvMjqMWFeHIUfjItOKd0qViZsfHamLlM1pmqhePRLPybuuen
	L66b5DMxZTRCmlEug+AxiSY9YAi9uKv6UAkeAmZ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823577aedf-2e7e5020-72db-486d-a182-8cef1ee58d10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f22786d68ebbdde1a49cd9221ad4e32fe63ddf0edc558409d814bf150d55fa75
Date: Mon, 25 Jul 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658754412
