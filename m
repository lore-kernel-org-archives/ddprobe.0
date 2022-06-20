Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098067B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 02:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655692199;
	h=To:Subject:From:Message-Id:Date;
	bh=Qn6rTHr3AvmMWUvqF9Pcbcy5EqUv9UM8tGp2mq1xR5U=;
	b=Qnu6CJcZ0LGP2/J8L6iiqRbO06RLoCLcXymbJ5qlf4pMNrOiXokethDn5vUjTch3
	ESbsQQ/Bq40/h8COZ7vJNtDx6TBfULcwA8gOjw9ppCyvIugJFqYHDxtEolD9/YN60If
	mvnTibbONh7XIoP397auUJefcq3FmM7Dhymv7kT4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655692199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qn6rTHr3AvmMWUvqF9Pcbcy5EqUv9UM8tGp2mq1xR5U=;
	b=FnHvhgZdr5RBv1ZwHYitfonqDLd820FdN1KCiJC73y/oXPOk3JqHyxtk4MmiSV4i
	XZvhXVi5jdlHsdmybhMesKEUAxczTUg9wjBP2QyNT3TdYNVEzWZ+G+BfHTYllI1d7xY
	mQsHkuR8cLfYohC1wTTrwLYOucGbG6qtn0mfSIqo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817ef20537-3f7436e1-886c-4f9e-b366-16a8e6214285-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09286ef1f8db0056f66e958971a140daca7f8e63f9ee0f42f0fe52d5e3e0689c
Date: Mon, 20 Jun 2022 02:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655692198
