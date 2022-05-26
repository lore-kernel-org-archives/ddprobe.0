Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE4510EA
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 02:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653532019;
	h=To:Subject:From:Message-Id:Date;
	bh=W/Y8gTshBKLT8ZNX7YEdaOkGgZxdIQg6oJJzO3pBp8k=;
	b=SUM+XRn9Otntom7O5opOejapXBy1eQ0wp5Dj+uvJMigzv+1ZnzcQVd0xxmQzRBjf
	P52hV9GUMxCQfhjjf8K1YG5n5E9+7SiblNK3DhQFtjpO2Y9arhpMuXoClEr9fDsPq2T
	aR1mxRO6bwp9KIsrsVGl8GSs43w1taRwuHC1G6f0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653532019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W/Y8gTshBKLT8ZNX7YEdaOkGgZxdIQg6oJJzO3pBp8k=;
	b=FEwZ1UT2l+DEa/WK8Lv1IRELt7iIGgVNluQ8eropQp4T9y9w2SUuVms+NK9PPang
	WgMZaBKJe28AwJNKrlRlmeNtUsS+K8A8mufBNM8B9LpQjWpNluMn8mmoN0d0B66G5AE
	tJGpiAlmCtEOnRhpd8qgmSfGbULAfM0iX5URgyis=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fe304a39-9bfeaa4e-437b-4120-9f2e-c287692665d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b82601c0d4637b376cdb76d354e095b91c359f72f0186732d70ba8537cebfa79
Date: Thu, 26 May 2022 02:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653532019
