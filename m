Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100602F21
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 22:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655074559;
	h=To:Subject:From:Message-Id:Date;
	bh=WdEp5MojdNJDT+gtnNbJroqwlP3hl6PQd+obJjXwyd8=;
	b=BmG0pNXHuoeE0wSzUZh5bQtqnsgMvxTIp6ExoMLyg5ADgvcpnlblNh4EhPDYCcOv
	jeFxIT3GSjVTijihD2619jVnh0POkbD1be3yxJD5PDtBr6tfn3w8mzrExY8NiGx72jz
	BlTF0WDZsQnQVqDFyC7N5eiYo6QMgjuvhZXmzQGw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655074559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WdEp5MojdNJDT+gtnNbJroqwlP3hl6PQd+obJjXwyd8=;
	b=iAnq4xMuDoVkNVFtv0LmKVrdX43H7R/lnwXRo6lKuWtgMSOB8WaPoPilVXPCJDA9
	udD5UPayyz1j2HPtfYrtHThwWKlB7LNaQeN/4l68PllCchE7ugebg4xtgmWpxcthAe6
	KBOc+oZDCVnvb2m4yRr+RWrMa+zE/cg5eFwMSjuY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815a219508-2a74a0b9-4cfc-4601-8610-c8415506bbcb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4716c3c3a6e9080c8d05fa5591e5183c2088ca55b99e58413556565f0b01f72
Date: Sun, 12 Jun 2022 22:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655074559
