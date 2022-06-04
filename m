Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEE0E137F
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 15:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654357499;
	h=To:Subject:From:Message-Id:Date;
	bh=ZlORDXC9LVEErzedmFuh0Vbt4mOV0/5lyeXU4kCoHpg=;
	b=D4teVSIw99KvMLJ/67iGJqmdzzM7sRhV7Z/+l9QPXC9BpOaIUKnQN7LytVAzuXUC
	oKW0/GxfrYjG88iqrSY2uWHu2MZ9jQeay+UZMoRmBvOSsPNdW4eBB1HfHQL5TlRbwSR
	wfmcWbBBquC3dNBq3/uK1Ikr0juD6zndOjrYhpT0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654357499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZlORDXC9LVEErzedmFuh0Vbt4mOV0/5lyeXU4kCoHpg=;
	b=M1vzQV2UwlosINwe6qiLFK0kAWy++yAW9TXpUx4R3ruHMByaObYMkAu3eVl/jRit
	L3UyDN6RPZD/CJdYkCogn07qEP9wF57fnFhR0z5NCHhYkzDZTZ/IkSMLl9W4S7p4itK
	FpscSLgH+wTsW5cR81ZC2jcdsO8DseFCXp5HbmLg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812f641da1-6ed1dbfd-c837-42f5-993c-01aa9269d065-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6deb0034f78cbe219c612311ecf827c0c8323c4004a0d344292e9b4a0ff505fb
Date: Sat, 4 Jun 2022 15:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654357499
