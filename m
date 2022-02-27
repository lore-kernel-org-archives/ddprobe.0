Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 938592F27
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 14:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645973485;
	h=To:Subject:From:Message-Id:Date;
	bh=0+YCDNc7naFnvfr1c6uwNHwucUMbrMq7Pa0Y4myfqNo=;
	b=lC0fRtgtltUVeIXAV5UguHAsE3AE4RfIHZ0Z4o21+4gYX25w4qlSeZFswOQqBiuo
	kwtGiL8N0Q40q9GmineTg3ktyNQpdZIRKlBTvTMQ/qum7rPXX2NYzgJE00AQiiGia4L
	loI9EWbcuucThIKBgRi5yNB+c3nxEMBcmfcv+07s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645973485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0+YCDNc7naFnvfr1c6uwNHwucUMbrMq7Pa0Y4myfqNo=;
	b=aZ2Ns+fk0X1V4eIZH9a8TySzjYsBXid/uRxphDH0Zw97NzIWXoqfTJNIiLBdHTKG
	DnVE1RvgjCsH+eouj4QoW1K+oATuL+HfpAHBizOYN/ie+K5TroHwCEl654RFnjpw8+p
	VJ0c7DH1/f9myaIFoAUZn33bEtA5V/68EbhXVZZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3baa34e2-a7f0c0a4-e06b-4007-8490-98093b4e3172-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b63aa52cbdcedd5ce30f6a8165c6559aaf1dcefffef111acbb865d1eaba32ea
Date: Sun, 27 Feb 2022 14:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645973484
