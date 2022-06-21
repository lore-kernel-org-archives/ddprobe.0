Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE5910E1
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 15:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655824559;
	h=To:Subject:From:Message-Id:Date;
	bh=MW4Yl1G5IqvLf43+dRxFbMz+XnN9GkIJDqKDIaaCtKE=;
	b=DtjD5/u6/a6Ky9QUD1DV8wbctNeKZosQOPMzxf1ZpnKpi3yDBRIS+BTuYhnmkeiS
	56hiG0b14gO5ONySvBea0cW25vw0sDHocxP7b43YgZlSPyRHXoxgknGRF4LmzDpLlHx
	rSXCOpaiW1Rp644pzIkA2KA+/q8xKZD7suclttKw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655824559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MW4Yl1G5IqvLf43+dRxFbMz+XnN9GkIJDqKDIaaCtKE=;
	b=ZjAEo9im6XSzdmK8JivBB1eO0UJm0rO1nTPk3QI9Zm53br0P2fqL7fIaYwi8kA2e
	8wdeETQRm1v/iaFvb3yjFKxCuhn0oQoIuxiD7JHqSdj0a7G5pTn/KHX67Yg0LQq1RPH
	7H/d/KLJQcWN0ZHcHM/WsZIWxFjp0oyUhAkKHO6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018186d5accb-719af2eb-0674-413e-b248-6f26ca2e78bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d31333bc74d27a857e58bd8341ea4ab2781c37a212d516431e9bed3c8558cf10
Date: Tue, 21 Jun 2022 15:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655824559
