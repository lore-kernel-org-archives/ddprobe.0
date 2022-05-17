Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3CD1383
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 13:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652795759;
	h=To:Subject:From:Message-Id:Date;
	bh=TEsg0zwHNG5pN2Mnqn64Yeghrk2i2xQFgrvYE+eBH8o=;
	b=Xf2AAnwj3PJ+3qV3ZTcaj7nRjDFJRJW6mDxYgrHNascYHpaxlORsuCTDB2wqzN5/
	QvJH/kmMEuH2xlst8jgVJf9gLaC4g3HUNyN+75XTrsCua9IXCEWQEmPmRqLjQ9i0Hzq
	p8mDAWT/UzzUZg3GawJiTJGQnlkyPVx+4PZoW2+Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652795759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TEsg0zwHNG5pN2Mnqn64Yeghrk2i2xQFgrvYE+eBH8o=;
	b=bksIORACUb7jImN9DfDJS6t5QDPqvps22GxNJR4yxd8VpOzZzMcMi1ypZt/tSHHQ
	wqmZ4w6AZ1MHk3kUhImgAvz5tsgBSkzs++OmiQhcVxoL1GRHprbVWDKId1MgpcbG/uC
	0GEzwiCUor+q/gZ1qo2zZi9wVCXnWIqeXLlJr/OE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d24ddabb-b5e120cd-01f9-4bea-aca2-2d7fab8e528d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7120653efd296721584afce9f1b3805221b97598b38238d02b159b66cbf52011
Date: Tue, 17 May 2022 13:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652795759
