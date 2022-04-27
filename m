Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148C87E3
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 06:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651040218;
	h=To:Subject:From:Message-Id:Date;
	bh=iow5vX8GV1oO3SfD/ba5ka2XmwM0JW7C9MUav8qpUoY=;
	b=T+k4Z4GWiFGD8oyR0sRC3Xyjz7sb1b6rNWHXX09917Py7Hvz0eQB1TbNuMcIFucX
	JnQg0jDV8LPQ8uu0cKksmOZln43KOdXqGNniK9jdB9O6toFkTcpygn6GSiWQ8/R+vel
	XbQmfls4UHs2rJcIrAthbcvyKlJW9GXN28VKLe40=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651040218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iow5vX8GV1oO3SfD/ba5ka2XmwM0JW7C9MUav8qpUoY=;
	b=etF+63wKmXNjhXMg27SdQqP7jw7+DrrMlzNEeRAEMtbM3nKIF4ZdrbCqix5GG4uP
	aP/XrHtnYMpxQVjh6EKSm33YsaLfNzhOJbUKavMP+/v2Qtb5+Q2F86bnRcyV9NYtwU4
	c50axT4/SgbVqpcbIuv34ObMj1yVw29kb5ESLbYE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018069aa6c81-89e90faf-de05-41fe-935d-f729f3a306a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fa23fcfba8ec75ded3d097cf21b71f03c93fcb14795fc3841e4dbe7aedb4093
Date: Wed, 27 Apr 2022 06:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651040218
