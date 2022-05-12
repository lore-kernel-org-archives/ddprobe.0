Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C3E3232
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 13:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652360459;
	h=To:Subject:From:Message-Id:Date;
	bh=8SQlKUheqMP5LNiDt/DeiO+G+hvKS58/leUha5RmXg0=;
	b=EWbgwlinyZcx/wKsC/P2q5b2u6Ispd7v3TcX2szJWfh/8S5anx/WV5nxHcmXfkvr
	rN8oDmrGZRJLsLMDu3f9qLZu4huAWyroBVnQ2VZ60GSvm9EhzZ/lUs9QpkIe5hodaAV
	L9YY6tOEfBUh50ncMM519E2iVJaSdUFHKSwC72j4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652360459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8SQlKUheqMP5LNiDt/DeiO+G+hvKS58/leUha5RmXg0=;
	b=c38KyLnLBTeaopmhT7wBHQp40UrlPmBFPW43k8/30igKa52TyqAX1Kf9pqNeDgPn
	PbEZg9aOsWTPcezTlS2MAIONERCgoxd5SSB0625QVx6pyrWY2GzrJtOzSDC1RzAEXFF
	ubI03cqSQ7Fi/2e2isWYWfawioKTrSJrXuLiCS8c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b85bb404-d7d27ead-2427-4d23-9bc1-bb9116789eb3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50a01aa3e4796d89b57701331a82b1411247260773dc32362d49a28d32962480
Date: Thu, 12 May 2022 13:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652360459
