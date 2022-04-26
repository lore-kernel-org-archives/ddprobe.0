Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425067B
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 06:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650954598;
	h=To:Subject:From:Message-Id:Date;
	bh=YbYxwY+bQXIFLBGpGkR6t9fzRHe8pWhPnAMm9HxDzsY=;
	b=dNogvchmeiuKh0J/SS0KWjYYP9MCDi4wlp+JZEUXOCZvharQ8NLsy+xJlyG5AeXP
	ZKuuCNKCjuIduXPfRxlC1VEtIVfgEpUvp1TiCJOqTeDPR8FXdZFxnvkDYSY6HYoknwD
	8xxIZKKVWHg76x66iVNgnLlrRwNMmXIW2Y2ORYKI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650954598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YbYxwY+bQXIFLBGpGkR6t9fzRHe8pWhPnAMm9HxDzsY=;
	b=TNotrE62+OOTlBulp5XYOLQBxxJWx2rBd52MYjzPis8cJlZ32Sqsaj8DNo0Vez0K
	fP87cSMt34KuiCqJJvrvVFz9zcTSSTTnBfkKLV4ugwAMWILjziTWySucNX70Rzv67Eu
	dptKxilJLUMO00S0wVeJZIqgCovdGmGwwKl87Ftk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180648ff787-0909f682-b674-4b1f-9345-e3d2486fd777-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0eabdb35f2db569567083c8aee049c2c9fb775c378b9e69197f696d3a2b83a9
Date: Tue, 26 Apr 2022 06:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650954598
