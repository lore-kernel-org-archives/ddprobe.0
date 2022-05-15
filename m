Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFAF0627
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 01:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652577419;
	h=To:Subject:From:Message-Id:Date;
	bh=NiQoxtdzlpPtk6GYfC/qFSGWgw7WWG7Z0kCUSDFmR28=;
	b=gkuymYSfd/s8x/usf5/mxxt+qJJlMQGu9bYkAFF4knz9qFY4BKExWONxmwhS4gio
	vsCjEiewN04GlwILw4vjHd9nckXMKuo+JRcPGRaxbYX7liX/sYwcJpFNH1qZXz+Hu5Y
	8eslGDELwJELHp1mwNZqFTVK3Czt7O6wo6XkVjHE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652577419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NiQoxtdzlpPtk6GYfC/qFSGWgw7WWG7Z0kCUSDFmR28=;
	b=E5b6FN/B4b6+7Hx91XJ4F06Mi6lhs/mbTzb9qWOhOChLumE2XZ9HE330REhPTpOQ
	Q84x8JnpHL5Cv0nn0M+vOkkTgkVWI3eSbNMnVGZsf4o/m5LjLK9q8AUfagBpeAsfK9U
	PZ5JSVzoh8xJXFtZTtsPbsLi95r/sVGdgfJUJMeA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c54a400c-5da98006-7f29-48f2-923b-62a99b6d5f63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 507471466d79294b5c97846a738232004ef765385c71c001779478c805d20f91
Date: Sun, 15 May 2022 01:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652577419
