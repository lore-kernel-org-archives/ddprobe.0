Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8E2A361
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 00:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653437879;
	h=To:Subject:From:Message-Id:Date;
	bh=USIDUi0okNqDBg0aPaQ2WiYfJVdPPdmCIaRCLc7HW1I=;
	b=L2Y5cdSCJOz6YpGadTrIyjvYU9C0HpRrm/DI8v1XDumwgT4/EluuDFMS/hZ2vUZc
	d7+6ASkoV/lRS4IPTQTP9Jkyg/zruGljfhP4kH/lMWYgKMAeGPFm9T4N++0UEb2mFlT
	VyJ0uFbW2G6ocOXCjMBvnuUqEd6szCtlH/ldhSws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653437879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=USIDUi0okNqDBg0aPaQ2WiYfJVdPPdmCIaRCLc7HW1I=;
	b=YdPPFhlA4qzfXoLsDFld/KnjavLXsFFWeaF4hsDEHTOkfY3LiYNhoh+/EGcuqS2p
	kzc5T3/kIF7Ia1axbb3g+r6euXhh7qgDKOrVDItJk1gKSE+xPi1GJRD+0A+PdhiSkB3
	nO13Mk1K5jRD+pPhWOjkiNA5eb9owGnZL1TQQEB0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f893d3e9-79251599-07fc-4f35-851c-60f16a6e138f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef139376d0f62d01f560f3f5f3011c3014c5e2cb4b82fe3947c53efaae6402dc
Date: Wed, 25 May 2022 00:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653437879
