Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE46A2566
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658942453;
	h=To:Subject:From:Message-Id:Date;
	bh=Qa5YDDo3UE3zXW/XAIDW+AKj/n/grlRtiYtgyFKlmXA=;
	b=PaKELkTibXfr6emgD2EI/XSDtjmmP50Ywm91kwJTesv9kIshSEu8eR3SUINJH0u0
	o4lIcrnMRA4C0q/sE3Wc/vxyo2IIgPleyjU4I4wHx6l5VNoqaP+3xuKL3+Yexmz/zyN
	PMBGKp3LlmyBVzTXpgbEza2zrvx53nK58yu1BMAQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658942453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qa5YDDo3UE3zXW/XAIDW+AKj/n/grlRtiYtgyFKlmXA=;
	b=fediwsiIStbihOKf6e9oJalBPZHiiUkW20+E5gfpGL55EbK+9R8bEk8Bcaq/16Gd
	rpUxPg3Nfi5LtkxMKXme8qMUT6clIeHRcswGYbz540vcfXu3a02pIx+5aXkRrh3a1cz
	9N+qr1+YsRyEd+B41SPmZ0b9roEVdnPve49a6ySg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018240acf384-69d49671-3a75-47a6-9e90-78532e9f24cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 042f76c62bed80470620ef9a5b3ede2236dda0d3a801a1f694458553136dd845
Date: Wed, 27 Jul 2022 17:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658942452
