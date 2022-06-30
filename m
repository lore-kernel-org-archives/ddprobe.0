Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95AFF813
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 05:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656567413;
	h=To:Subject:From:Message-Id:Date;
	bh=zgTNhJbw56folT3hIrtRP4eQl8J3l2gkm3M7Lh/7UXU=;
	b=fDbBURXn+AUDuI8eP6P5PQRlt0uFVgO/txQgnPM3c4t6+xP/3Xckxlq52XMChJfM
	1aJsceOg01aRzjZhjWnq6zIvrhdIWkmqPdaTnXKx8g69DfzJRxAL9ptPZKRZg5bK6CX
	M7d0QMDvWgh7jrU1PD2OVwa4jHy4BUjHMcKd+K/U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656567413;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zgTNhJbw56folT3hIrtRP4eQl8J3l2gkm3M7Lh/7UXU=;
	b=EPdDErm8WdqELm8eRJfqvfppgJndDUHI6HarvP92OcPltScPXS1w+d4bP16R5DD5
	X6ncXW+2fm9K0lMVilgw0IGNHtI9y55VmEBUvyBVz1HDOvWKGCtTu89pF0lcEAYzGeC
	w2gU518Ma+pO5lZzpvNrpURnZT+5F9tmBTaMzefo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b31cb640-e516d65f-03b8-4d61-b996-b3d470082463-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb61e8f772613d1fa872c4049c5a3dfbddc0ede53f0d02d40c8aa424fac9b884
Date: Thu, 30 Jun 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656567412
