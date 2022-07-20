Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073D37B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 09:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658310412;
	h=To:Subject:From:Message-Id:Date;
	bh=BEb8HCbzpYO5O/dbo73b8d77KNQnVq1CY9tGh7u4fS0=;
	b=AQK/zUDL3pwhwmEgyCfe5xM1kdAkbpsqDEfGiYSiFbYzo8JymBBtbQfPf0c8xfuG
	0DInDHVSvqweci63SHtlVdHCwHkNm5+F8UZjo0m+prwtJvnrXp+2tp6W3aQFONhRFpH
	FBAcuyZ+sxYLdFxBuupl0oVrx640xDMYiX5MY5sg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658310412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BEb8HCbzpYO5O/dbo73b8d77KNQnVq1CY9tGh7u4fS0=;
	b=kmX8P++fLvtBwuskxhq2SOzen7WJEi20k04bG+TWwLXaWdProtOfEKS2YkQDlGkr
	CtELbYTYFxiwQig1KTzxAeYey5A/+FQ5PHgLicmuEZJtLRb55TBuUtPjzx/llIYlgJq
	jZUVmW/QTwZhbc0Hl3vf+UP4Fe1NI0kJxIvIdtJA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821b00c810-9b75c5c5-efbf-4abf-8c6f-765c7fc341a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f07ef9935c418e76cc3fbfb1d97374916a1d014ed2cba65ce4b9566ed6ffff0f
Date: Wed, 20 Jul 2022 09:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658310412
