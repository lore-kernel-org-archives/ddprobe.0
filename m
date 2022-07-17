Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CB42575
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 18:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658084212;
	h=To:Subject:From:Message-Id:Date;
	bh=+aF1SVWDpmY0DT1xYdIdeNyZGAGxmOl9fWA3VYR+u7k=;
	b=ZAWE/YrLzsUWL0Q+rrAGuCVkxoIrefkZrucF1+ryMeboI6yIQMVeTIWpZCzUF1dJ
	lf2gyM1FvZcj+d21w35ckw97wETL5ki9al0FHadfM5WxbIGmLuObDYt4wlFYChiovJf
	iCMfhQb62GP3dMuF7uQLFUYW//XXYXbn78lXzxFA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658084212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+aF1SVWDpmY0DT1xYdIdeNyZGAGxmOl9fWA3VYR+u7k=;
	b=PtRUmt+MoS7OOgtZfXWvzRaZkVbg+Hqvpnrg8ATodnAdC3b1s/nHrOyJJzj7b4FP
	YeNPEuH+QClberTpF7p1RshoqXl0sU78necUk4jXQMeYA1X7iMX1GnXDUtk7XkoqGZD
	haCv8C6qC7h/Z3BeRq66FVvuPZT84yb6eh2y4hjQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820d853e2b-634cfb4c-2f56-4da5-9b31-e6ab55a9c3d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 211733e6a0c99225e18cfb0ee28e8cfe08d78d73e2b00c7c8394b0037c913b70
Date: Sun, 17 Jul 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658084212
