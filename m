Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040D03D67
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 22:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654815599;
	h=To:Subject:From:Message-Id:Date;
	bh=oSjUvdkkDpOH5UJi1r98t5WWbSIPmod6gdVj4GdEE20=;
	b=Os+YoMe7bib5aufQEO3AJqQBJXjmWvTlcld/CgQcenva8c3i8hqBFumYBY2G5Z4+
	JZDLUdnzameF8MGVfBjJt/yFN+q8yA3lQ6+KMHN7prfcMd2bVDpuDeJySgKxKzJvM8I
	/SiFrkwAYIsuM38g7XbfoNk9MkSG72zwQayAjs/Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654815599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oSjUvdkkDpOH5UJi1r98t5WWbSIPmod6gdVj4GdEE20=;
	b=hZkDVbUKo+uhJBAS2suyyyiskfesh2O1jk/Utc+w7OyAP2gUsqbCfzatGHrCw1Yk
	NPQKxurMExtoP+1rc88ObdtHp2RYUiXkuir7bOckviPBJn5n7bQeblvjSC6P/lRTGYT
	SNIU5ZP7Ggfsajjjw4JH64L3ureZ8miPradgsdFA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814ab22a87-9c0ec776-36ea-46ec-aa74-9283e2fed0b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c971795a722bcc5d092baa4c4a5ba747e6ba9e8c0b5abb8c4596be019dc6c7e6
Date: Thu, 9 Jun 2022 22:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654815599
