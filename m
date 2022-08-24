Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33921ECA
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661308852;
	h=To:Subject:From:Message-Id:Date;
	bh=2c3kCjFEA1+diyeCKxMTIm+xka0lhx4S8d+NZeiThYQ=;
	b=YOpEiWvEyODzGX3TGN3vEKd1yWarjRvx48W4wGb7o/cG/uSMIjMgdZgOSA8OQ/z0
	mqmUjPLUDcdwpRR1XfASUWXyOXjtNxRPSvs9x7GxFrCJ2knVKT5VyutKU3t9aiktOJB
	RAEhTna1QDSmaIGjMtmBxAnibqt/6iVnDbjCFdCU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661308852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2c3kCjFEA1+diyeCKxMTIm+xka0lhx4S8d+NZeiThYQ=;
	b=e1PGBztnRAE0sDBIiwwERDp8O6GCxBop7INBKpbWu21bWKGNt0FTkmeuQJWNpzLA
	CWlAtuokj/TrB3HXRnQv3iIgiaxFiba+He+aUz2BjDYBegDxXZQ+84hdJub8U7cY0lc
	iXUziVKqB2OwRViQrwHrgn+7YT+MDKNCP9b859t8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cdb9595d-44e1e560-9358-42ff-845d-8c60f4538e2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 612d77a7d1895695d453aec8700cb445726927ded6e08c104ac0758ada66b0d7
Date: Wed, 24 Aug 2022 02:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661308852
