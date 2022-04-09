Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AFC621
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 04:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649478238;
	h=To:Subject:From:Message-Id:Date;
	bh=jrRVtsAFl1siMagAdkfG0wJq72Lw/tsFvNbunlLB2tw=;
	b=CSnEvnXUfEFJ8gwQF9+JLVA/FZyYuV2pTgX+7t41092WuI2ny29kqFT6cFqxj2Gg
	0TrMOfhEOLLGjnjQTGSpwlDuT8HD2lNeNi9oyxjj7UyyJlo3AGsLU+MNvFNGPgk9IKg
	KBSoDoLSMUqeenkw+HxASDlRedfd8WV7YJuFEijA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649478238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jrRVtsAFl1siMagAdkfG0wJq72Lw/tsFvNbunlLB2tw=;
	b=PlGejGOgdpRvMrcTYVmJLElaivjweSwmBBFQb3GB80EE+T0AGpbsDosFp4opPMrE
	nk4rawwM+c9GbNJhZ1TXanxTiBF0YYYEkwfq4Z98N1bidtYKHGD3+tXLu0IyQLHtKzz
	OuunyHhTehfmJeBxgUtLAIZDlqIAi/rNUkEB6E4g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800c908091-4265d52a-473e-440a-bf77-7cd9eed96310-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 120250334071bf12eb9f3e362c6943df476d022af1cd4cabe0cb02dfbe507f33
Date: Sat, 9 Apr 2022 04:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649478238
