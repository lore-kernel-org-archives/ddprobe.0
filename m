Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61FF7A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 07:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654846799;
	h=To:Subject:From:Message-Id:Date;
	bh=FYplbgKPhoHZ8+iiJJeYPa/vA+AG//EFQZ4RN0aFwtg=;
	b=KokMX7lLIS6I9EfULy5Da5aj7YbM0xaRX+hlT3VYzGWnfcSwcgbGvZXFNdX5DssQ
	8t9QLEQ14rHXmnVfS2MUcdFGX5aPMqu7msw5jA6HAZa2pj1OlH/JtdwEUB0tHcGr/Dk
	11cEQ/kgE3s/Lsoq0xnUiH//woyxVgrBFHVA0JfE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654846799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FYplbgKPhoHZ8+iiJJeYPa/vA+AG//EFQZ4RN0aFwtg=;
	b=fvYifHZKMujZeYg950/pjFlOsrpTYewBc5jWEMyKlWl0nMTGNucv5g0ijzJ7EI3K
	ciQFaqeMDuQZZXnEflZJkePh8/os8Fa4oAFCrae3oT/Y4GEsofpYBi/a5hfY/WYgSg9
	6kHwgnEbZYS3mOeMJMYFkaDEwBD9751EHCACqCF4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814c8e3d78-8e42873c-7d64-4c9e-aa66-b5afb08b3772-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c02612371ff9b67374e517e3e563f1dd1515a17623e6204359f2cbc84ffec6f
Date: Fri, 10 Jun 2022 07:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654846799
