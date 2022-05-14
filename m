Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B65729B2
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 20:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652560019;
	h=To:Subject:From:Message-Id:Date;
	bh=M3DtbFzQEHNYXmElUCY9/FAp3fbyycJZcPZUp81B8Us=;
	b=b4DLg6aQu5+9iwOBjiPZSaUrZcVXXC9TcV2PSDIy6N9rIbCXMFiPFCZ+6E5/eVTB
	qDV/i0riQqp8Y4l79IypTttHiAehcDyObwDLdcfdB3oTd3QAh9liJ67kWYHoTT2jtib
	S9fqH97Gm1HQkJc/Fdd7Ps6697VZ8xM+F4R59EJA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652560019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M3DtbFzQEHNYXmElUCY9/FAp3fbyycJZcPZUp81B8Us=;
	b=Eyv9rUatuDeCjQ8zW1OuAC70tCXbypIvTYJzD6Y6oK2/AndAy0J5LtG7fgaSunA1
	l+GrtMESQ6/K/lj+AaUPXqGs9cHzl9ytPDAcj1sNEBeVAz5064TGNdJkqc259/7Wt5J
	DPanGpxHhE/UdFJJPwpOqe/unhuKC5FcijahZP4A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c440bf93-b4ec8d10-78e4-45c8-939a-5547c9976815-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1c84cea694fd13d979dfc61b211649d708617e3a181377429e21d0e8963d6d9
Date: Sat, 14 May 2022 20:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652560019
