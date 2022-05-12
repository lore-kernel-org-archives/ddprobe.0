Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372F73232
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 13:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652361719;
	h=To:Subject:From:Message-Id:Date;
	bh=IikhBD2mdnqezf56BP7oXCaezvTQ95+X1y8PScfU9Gs=;
	b=M+Vjw84uvEHXbQ6aVuYpS5b69cttWXhMFVzPTuiPZfUdI2C404p/IPhBQMEgwC6A
	oeN92Ja8nzvideS+YZxoM6mRRjkN53joqTeszvrXN5FMPTy/GpMVUBILHv1zIgpXqMz
	/JiDPVgV2oUV+CODv1b8EgliILRFl+2PN4nkf8fg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652361719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IikhBD2mdnqezf56BP7oXCaezvTQ95+X1y8PScfU9Gs=;
	b=jjtmbFgkFllKlZN7tNXX/KZbsjWXEP+Nh3fbIdIAlZQxaFAVAudIqDJjctkAl3UP
	bdkEEw/8uHovZhkELHX8S8J8+bc0Ndcn+JTF2ryQ6Jd0qyOPWA8kYL9Fp51A6oaVbct
	6omVOF0u9LKS6W9268TlRepns5Q1p6HmBsCvd7GE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b86eedd7-2d8febb1-e2ff-40ba-91d9-cec430ebaaf0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d57ca51df45d38f0d7ae11a84746c483ac28fdba8f274908803dae54440a9988
Date: Thu, 12 May 2022 13:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652361719
