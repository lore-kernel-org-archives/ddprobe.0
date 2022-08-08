Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4816B7A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659949852;
	h=To:Subject:From:Message-Id:Date;
	bh=J6F6bGRcnrj82pznEYeRPKxBh1kXZn9VOcm9XA++vy4=;
	b=kVWw5U3aCrIy6zc0V/lEfxtntYsuOvhM+AgOq5zzubKu/6cbrQLfzNiZDBfJcZX6
	tUtgiWXnFqg6NCMbaS0zi+IlOjPGbuJEHLcXF5yDZOOxjZowKFYuWqn3zyGV/dPjYX0
	cOeCK1WiaFLvfZlaIHk6m7R6+cOyI22xwMINfDyo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659949852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J6F6bGRcnrj82pznEYeRPKxBh1kXZn9VOcm9XA++vy4=;
	b=gkN7HwsfCabulfpyybSnEvM2mvItrUVxDv/zhEeV0Dp+1maWSw4aGqFtV6qh2SVz
	52UJoMupn0DAZ1/knYP231CfPOOp72aIxGNEH0FxKxncP+z+T2dyxEVE1oXJAu486CN
	tp2UGEB5cNAHeybf0FcpHAL/ZWg7ccT8LKTZ8GA4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827cb8a797-769e12bb-7d26-439c-9280-b9cdc00ff4af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7724e21c80a2e75e5a27aa9912aac8ee3667e2956a480da6a3c448763df5b9b5
Date: Mon, 8 Aug 2022 09:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659949852
