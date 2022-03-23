Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FE61360
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 06:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648016785;
	h=To:Subject:From:Message-Id:Date;
	bh=e+Hds4Wi5YagInUQJ24WvmLqL8oLyp/KV/KnqplJ/8w=;
	b=XtrKWbHjmMot12+BhXdgnnhcXY9Hv5K0RiyMu2F/QUbbUnw8x4Y4uvJ4rIj1X9+P
	hb6wUG2fsvJC1M9JUh2PNZ5wNXrbrsKoqeM42iLl2O+Iwz9yw4Oo/viQtmbIfhm02MX
	jNGbr+SHc6mihJyL4m9HECKum+E8o7OmADY1gF9g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648016785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e+Hds4Wi5YagInUQJ24WvmLqL8oLyp/KV/KnqplJ/8w=;
	b=S7vfGekgDQounZdScgNAgjKz7zk+53WUMbt/g5+VD0SLeFJenrII+4A69L8ObBXL
	8H5WRKiDEL3h1RdIOUNq2y/QKZbEtsHB6HS/jCmYjOc6VN5cLPoA6IB2C95ZX2ldK8/
	E91DRvltvlVSdlZVUdv2BhJ325uXfbLDm8lxS7tA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb5747d46-b3786586-78d7-4c24-81c5-e9577d128cd6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ccdf6812f08510f57a39d53741aad8c315dcdc6643daa06fc79d0df9f5d3648
Date: Wed, 23 Mar 2022 06:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648016784
