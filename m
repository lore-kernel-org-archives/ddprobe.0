Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD06117CA
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 03:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649216818;
	h=To:Subject:From:Message-Id:Date;
	bh=tsvhDuAg4hm7ccM9r1XU//DMAbCu/sa/rDQmgnz6N8w=;
	b=Z6s5pTP4GQ8Cb4Fs+sQz91671eRwRRGAsY2EQBjX6w8z9laKAZHERS5Onv24HJw0
	P+ngxwKN1XmGwY8B6x9pHY8IQjZpidGb6QVFLRQkq04FnozQmf9t8EQ+M3fkt2S/7wY
	0GI+VUlPaWLc1S88JOh3nzP4k3hZTzxRS7wgwNA8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649216818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tsvhDuAg4hm7ccM9r1XU//DMAbCu/sa/rDQmgnz6N8w=;
	b=g7Y3kl4AgfdCu7ODlL/EyUHOZwZKEvOOrRt4Y1CDjkuXAiJJ+ZH65NvPAkkyR0Oy
	bFl1GCXuVeH2wEpMngEMruDYhUKpNTmluoU7TRxyo+Wl6JhOS2uvjS0AfzOjifxrA65
	+6nKJpxMu64sj9kWqzXSs62xVh96bMsP6ay8WoI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffcfb8c59-a69cab33-a4e8-4328-98d9-208e8741e5e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ad084324a06436c4bf630e786cffbe83f307e68738e86961311dd73681eb70f
Date: Wed, 6 Apr 2022 03:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649216818
