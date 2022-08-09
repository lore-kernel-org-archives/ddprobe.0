Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C5815A0
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660026652;
	h=To:Subject:From:Message-Id:Date;
	bh=HvyMfqS5jmHRTxyiL+2e15KLVX/OYkuNUA+KdQkQX2A=;
	b=Yl7qGrjBYyOj7o9Hyp2tqQJ86GAInBs6KjlgYnTLj9NIziYEGU67q21g1rNBb4T2
	yjkFu0GRELZCPjJOyxxzpIf2djLk1aeKnACB7UZq7GCc1qWbbaIKuOGkAbEtxQ/Gze2
	O1pjdkQNfjuHmml+eZZs4QTHRaH9oNGBDWWS08Ws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660026652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HvyMfqS5jmHRTxyiL+2e15KLVX/OYkuNUA+KdQkQX2A=;
	b=KsffEudBESejn9Z5IKujXNSDkhSv8p/yRsjKMNNFAk58+KcsD4ALR5fDCznZ4xW7
	DmnM9+Zurm08a+yrRlU14WHL/e0TYSYULk2VjGtJ59drz7+1G6HNvQh+QFWi/CDs3JJ
	zCJTKFlQLnXJXDPJJz2mTONYs0lwhDby8X0Mw88o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182814c8789-54304e6c-8902-476f-9bdb-5320ea327fea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50627d549e8848b5a7f69bb9872b18f1f03c437aee8b647de1cac8de86260b2f
Date: Tue, 9 Aug 2022 06:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660026652
