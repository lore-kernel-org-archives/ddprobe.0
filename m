Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD53629
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 01:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653354959;
	h=To:Subject:From:Message-Id:Date;
	bh=1fkP5F6XTcwwU0uoIqLqQIX9vS5kWZJyXW18rZDOWtA=;
	b=kODE+BlsiksWU5Ooy/k9dkwZ541fxRfaCufmvaFP9f1CKQsgLBfEKzdSW+tB9+Pc
	2vUBFJ+Pb6vhHijQPFIjJHCS3BcpL0b1Ri5MO/A7zp85gkdDNhSTGn3UI3Xs3vpW8QJ
	GzpJNzmQHN0P7e4QK2uB7Nh3rFNohp7yRFQv9oiE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653354959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1fkP5F6XTcwwU0uoIqLqQIX9vS5kWZJyXW18rZDOWtA=;
	b=Ira2BjANLumpSCk5EB4o08L0kjPekhd6nRg3u8mgoxyYd8CMopk1DhG4yipx+drL
	bZ0DX+76jSUhv/qO24BWaxyB9CD7Tx5OMmYMDxqBT6HvmUCcRO+sRWCNpoiFhFbb+dp
	NOSONGZqVclZY+zVKhLYeLLQVGPQXlt1PqdiaxM4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f3a291e0-e315867b-2263-424b-9ab2-4ab2543cf5dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f744ecd9c03bcc5db430f0d8640a83433f2668958c457997dd998a906f7fef99
Date: Tue, 24 May 2022 01:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653354959
