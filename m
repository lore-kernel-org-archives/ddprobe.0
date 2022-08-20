Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B77667B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660968653;
	h=To:Subject:From:Message-Id:Date;
	bh=LuhWujF+PDfMChiDDi+H8VP5mRnAmLDv0L7rBK8on1g=;
	b=V6hef0PjzYH4W4yIgaKSGwYYnmS8ug1MQtqOxXA17+jF7tXBf0BPbkRJhRCYdB3+
	JbnkfcQgsbRfX6UOhNFBcpQr1HcYKkZNB/rKX7EVdrKID/KqxxQzYwME0XAVMMrdBdF
	5/GIbiIz97XBwgMqsh7sdMrfESX9EVAr2oOiNoUI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660968653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LuhWujF+PDfMChiDDi+H8VP5mRnAmLDv0L7rBK8on1g=;
	b=XvAK8Nuvf3oIVk81Iueqb/npzQEQqSOgxNWzZbwPILs/eVzFvL53hrWS/V6IUViI
	f5V7Sd56OCeJzs1tt0LmqRF8/SGaOdaCVz/ITuTRgOZM9+t5dpbdPhghU4BL5syaVvr
	XQowP24Jry+o2PTemZu5WtE3LucQWkgGKbyE65Q4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b9724f03-3d7186ce-1804-48cc-95cf-73a74209e619-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36b3296b7009fb52a297c9af7bea90eff5c83945b029721414826939c9dbd6d0
Date: Sat, 20 Aug 2022 04:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660968652
