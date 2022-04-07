Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8A82564
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 20:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649363098;
	h=To:Subject:From:Message-Id:Date;
	bh=3Swf2mIDZb8jvFH19g/W3RIHz5ldEuFo9qmqfLKZ1cg=;
	b=DDtkYSZoO/Q/kSs8Pr0HzxZFN4ZTveFDgmj0ZgYTxRku0zxV0R6Eb0O5Pi3QpMhB
	3PtPDscsR+yNvu6FvVbi8dC84av8BtndIOgcrYujayyzqyquNnIA5jHFtjRAcZBiDX/
	kFvKBuDT1DBuI/KBrg7JPPsqoI/yl2uAFma22GC0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649363098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3Swf2mIDZb8jvFH19g/W3RIHz5ldEuFo9qmqfLKZ1cg=;
	b=h0YQiVUPZ7DTXDb4GGRXcbG+GWsrqkuM8gjB804xaD9ElYjGYIeUVHCfZQQEQupn
	+09Lv3SfKMA0AHvHIlmKm2ZzEw4U2ny4x0qLDO9sUHWiUv6Ab+1bFzUUJWIfkpPPGf6
	8g7VNCGskGYnp5gHO81dBB15Sxods7sGnuY0+HCI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018005b39abf-20439eba-db2e-4e5a-8f89-e5dd530f07d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c3dcb60cf81cf9e80e61f1b95cf6e56b80a14108225e0d5918ce39da17c78ad
Date: Thu, 7 Apr 2022 20:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649363098
