Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D2529A2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 23:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656200812;
	h=To:Subject:From:Message-Id:Date;
	bh=nwxKgIP57YccuWvnWxuod9A3Esc7rHLz3AXFB5R1UTU=;
	b=cf/Q5o54kuZ5v2wH/VDUy9ej/bE9+i/vZsr1Xhg7/JlADjz3kM5JkDUso/oUAQD8
	Z+kvtjRmTy1z3Gd/1PoLZRsoqNsx1FJniUB/b5f3+/KT7aqhX2LoS4jtEyMQTqjGPoN
	0JLkgO2dWOzqOIGpKmUYgiVRRimkYtLBu8bqhF+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656200812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nwxKgIP57YccuWvnWxuod9A3Esc7rHLz3AXFB5R1UTU=;
	b=B7i4JVFGPZBZDaWXpELBsl1InivY+ucZYrgBzbV4ja9Pju/bSfQ3ZMB30PVZ++BI
	9bzKLi+hOpFYhk6lCyiokyK/aw0QGqocn9gAf7A/HdXY/lXsfldmnJjMCwTGr/UqnGR
	XFR6uiacWs3aT3DHF9CfbN9QehMVByVDmgaKhzyQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819d42d6fe-52487c92-7cb0-42dc-a5df-7e671ef42180-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b98882dd16c31164bbf75cb4a96521a19917dc6648622fc86ea646dcf1bea90
Date: Sat, 25 Jun 2022 23:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656200812
