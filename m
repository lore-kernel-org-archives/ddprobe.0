Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E06186F
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661359252;
	h=To:Subject:From:Message-Id:Date;
	bh=RRarwv8/5dZN7JGx2fsNqPDP7rjlR9tLXxklrcv9aV8=;
	b=N8YEU0VbSEwK/bNlHDnAKdmdxujadfFANPtbJR/5/oM0ne0i7MBGLjieU/XYZlPV
	vrBaMBrEi9QpHk0KC064LRBd8L4AE2qdG/OdkbWj6aSq/31sqajLo+qji7dZtegMaIv
	KctWJon9sKT/EAwdyhGiMDoSSr+n/uxN10HaenHA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661359252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RRarwv8/5dZN7JGx2fsNqPDP7rjlR9tLXxklrcv9aV8=;
	b=jleomcjP3Y909LrpEys7zd+Stz/yxxPGArL6wBtB+pWeaeGJAbnIKHlfwuMPHkqu
	0p2C+RXHPu5YjjmhzM+iH+MdK6amDMPP1+sgQsa8095upqsBn5E5q8T+ZRUyFevHhXn
	gozOahMm2xIFQMA3oAvYma+sntNuARZkZXWFrjNk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d0ba6448-450737cb-cf4d-4949-90ec-6a618676eae2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4eb62f8d9ad0aa87d11daaeef39e317950aee56bd06ae54d4b9d7dc03426b7d8
Date: Wed, 24 Aug 2022 16:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661359252
