Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1047A
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 04:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647838584;
	h=To:Subject:From:Message-Id:Date;
	bh=U4oiSwZElcY0K/VpMbCyD99qKLnSJoBfciV9+v3nVsY=;
	b=LWcHnpxcTvVUsqxM25m46FZHaiUeJCwr0IJKU/K0Zb+IJ0Ematnx4++GMBvuyyGf
	jQhzAYQBEnLG6aml1uU61Dmf6QxKSiWVK626JdtzcuuT9XIPhgIn55xUJ6+nSl/X3Lv
	RJiqxbbBFYlfRvdbSN4/FHheRMMjDMB/NOixA3gc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647838584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U4oiSwZElcY0K/VpMbCyD99qKLnSJoBfciV9+v3nVsY=;
	b=YH6x3Tv2YL9YeU6COvu2weIKwblfS9I6vio2sySeYjEieF688nsGpLmQc0fJu2Dk
	oKNQzH8p+s+pegvD4guK0/ZHyS2RRCnXnGXSxQ/l/Gc0YuTcQ6c8qDV6ZJaB2RHtzA2
	4DiEbAMHmSH66GIiqBK0QAKhzQbI1tbhkraX/44M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faad55fb2-bcf06d37-772f-433f-ab80-c508efb5c7c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d4bd29bb71cce2d06c5444feb3a98c42d6e6605a8d5f49a471863e872283324
Date: Mon, 21 Mar 2022 04:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647838584
