Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEEB6362
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 06:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654066619;
	h=To:Subject:From:Message-Id:Date;
	bh=zWt4xCOqqUhchfWkcUhbZCrVHXVhFO7nn0tD92itK2g=;
	b=Xfr4GTAylbt04miKLc2byjMkJYxBxYLKAXTEZ4uL0FJSUb+kEyqyfTbpdscYTp49
	X7oukyiC24gcbuClzEIuHRWIo4swhbV0jkDT5yE3yH6nKQFwvKt5wsj3fZFwCVue27w
	PR5lRaCD2qdo/woIA8Pii5JVZMi6U4oP7Pp6UJx4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654066619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zWt4xCOqqUhchfWkcUhbZCrVHXVhFO7nn0tD92itK2g=;
	b=K0+Fr3vGK+FN079NC++/8y8AgedFpdq72c1Gh/3qi5ROJ04qpcz7LmiBFI/YQ1s1
	ob3aWwvQtqNbGnL382spwTCmP3bwJGkOhiLfLtdjZLLkxdr7nABbyK+spgkmsSOzBDo
	xLCoBePMRNOwT/3DFm962XbxcMWzvbNizBeIva2w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811e0da390-6692ec1d-64d5-4446-8840-d60ea61ba679-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c013dd337e356f71defbfa630a6b5c84059f1c7b906720b9ce6812148a90e625
Date: Wed, 1 Jun 2022 06:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654066619
