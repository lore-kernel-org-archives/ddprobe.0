Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A311851
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 11:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653650159;
	h=To:Subject:From:Message-Id:Date;
	bh=ftunDj1LmuDmHgBdLkEeF2eEfh8Pxex68WSW/lsAZSU=;
	b=d/ZYc9Hoi46mAlRxP/049RjVNRl2xN2UxpY0KtqpZW/VSEQIucICPyiO5e4UcUQL
	6TBmaF/4wZ1aWPcsEbtLtCT0rBuDqvUEPkj0JKiS9o+SBycxP9nuYIRHJW06KHulfXt
	t1RDUpKU1Rqc1QTgzMpOrMBZmf/+/gSW1zDiC0VU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653650159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ftunDj1LmuDmHgBdLkEeF2eEfh8Pxex68WSW/lsAZSU=;
	b=TNUGeMYiuD7XOxjxXOOAHbOzRt43xjn4LfPFY99CUrOyv1dJ4pkzvzUu9tTNjXTQ
	Io1nTTsb1cHr7amxXZ+H5pvEd4QAu3lpyRRLW6TAcj3Vur27d4ZRcB1T0R0kOSiOLwT
	qc64vaO0oe8qeFQVZmTvp5DSdZYMRa7zFQ15ky+Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181053af68c-071ef23f-2454-4046-b985-e1d2dc7103b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ccb6b66b91b2a9c666c05cdcf89fc55a551fb1fbe3af8fd5b4fd1cb0040def3
Date: Fri, 27 May 2022 11:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653650159
