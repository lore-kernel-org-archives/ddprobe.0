Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCF42575
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 18:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658083612;
	h=To:Subject:From:Message-Id:Date;
	bh=IiI3zLvVVyGS7T91ds6ePvE3VlA+WxdzuMQnDNIxfqs=;
	b=QmY+TLENagbNHdaYiBa3TR/7G0Uevv7qnV+ooJUmOEuuv/v+AF6yOGF0FuYNbgEs
	t9/2CgPvYmL8FKlZeRA2rvol6l8BwGdRY+wIkPkzr9moNK7HYxxNoNvaNR7fI9AVc1Y
	pYQQm9Gfm7wuQxpQi7jiahEGdZYJximcY+cCm9AA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658083612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IiI3zLvVVyGS7T91ds6ePvE3VlA+WxdzuMQnDNIxfqs=;
	b=bXOGYveWeDnpL/P3tV6pTqVMI/VH4QExFPc7RNO/CD/yyHPhpRXAwt6j+yR8fNG1
	04bo94E2UB2RoxbPVir9dVZf4tcXcx2646m+plGU3n0YDArBC4StIv8ig188VQSpb7x
	fS9WREtkYmmjKQSCu4oJ1CdsWQIJD/JrohhqXXtk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820d7c1667-35be133a-07ff-4378-8967-a94549f4d188-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c73b68e59088a2235fa2bcc20e7a1dc089299498309111d6c0bddb71a69084e
Date: Sun, 17 Jul 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658083612
