Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB8737C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 22:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656195412;
	h=To:Subject:From:Message-Id:Date;
	bh=unGjli/OQD1MksDIm0SQbGIG6aV4BlrFe9Z9NSkQGUI=;
	b=J7k1C1NaPZQ1iwPuErzanq9mkYBIM5oCpS3IElXyH0KQZds8EpS22bG60anEK5M2
	Z+tAzVdOcCBHX6JAqOP9yinNvlpM85Bf7axPMvJHPWPIp876Nx/ORxKNDEjTxezgf99
	qdHwrao2YtnSyyi/Wp6NZ0HPoVQoLJcF/IqcCnLE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656195412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=unGjli/OQD1MksDIm0SQbGIG6aV4BlrFe9Z9NSkQGUI=;
	b=HdXZgBRt8H64v+5oUrGsWfQ+Xn5SJVo0+qXiCXCtDrbo91j0nKtWMAnfAti8YMWr
	Z5/kKn0BBql6lqb24uC+hfzjhpcgGZ+9iHfpDY7ysBr4xnzV0VeGsgJ5idYgEwAwgUq
	qha7xrkZ1htkPGoR7+yEWLCCThLnfY4mNMF/0vYQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819cf0716c-f36cd6c1-dbe6-4d36-bfe5-b7e76d7b0c66-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1caa1166a2ecf2289a76d098e1aca8f09dfbc3863a9588616ec04dfdfeae9f9c
Date: Sat, 25 Jun 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656195412
