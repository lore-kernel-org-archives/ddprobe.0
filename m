Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4847E3
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 05:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649482618;
	h=To:Subject:From:Message-Id:Date;
	bh=SsA0q2y1B1kso/WcCT2ELGE0F276WpZ1MaZNQDB2ACY=;
	b=Cyd9uPWd9IVINraFQrfooGBiba+sHEAOFLoxT/Hl2GIgJogL2BDSJ40riNqlwe2i
	5n6lQPa5IFtXRuRH0b2k+V0uBjQYel5srJNsETT4fC2M+P2shpj+VlcLZWyOABOJChW
	O5kCFJL0tg9BzbNmXu00KBFWdMCJBN8QmVqGW6eU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649482618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SsA0q2y1B1kso/WcCT2ELGE0F276WpZ1MaZNQDB2ACY=;
	b=ee2/pNmE4aH1U1K3UH6EE3cxnELYU6Q07+yJJTz+fGrLQ5wBjpP6FR4GYbZuLKuY
	1tCh3brdaVJpgujZ523jU6UyqnPglInlSvpgklWYqqp90cJ//QksM0oTZZyrluYCaMO
	uN8oQJW3IvS0HCNbFLWxqA8gdHTPJejFfJ5eDAKk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800cd355f8-8fd2b0c6-b152-4631-9826-496d1673c195-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8545bb8f7d072e78e01249991dda5e640bbdea9ce3fabed691ef1607da247dc0
Date: Sat, 9 Apr 2022 05:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649482618
