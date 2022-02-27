Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6C242F27
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 15:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645975284;
	h=To:Subject:From:Message-Id:Date;
	bh=EHv5FREDhmBJvU1cHbIz2m9aZ7Gbsc1WfXQSxxVLop4=;
	b=OizB6uA9NhwYjqBYV1p6/Dn3MF79FC4WP5ohWsAs8JTAqVHsM/7rI2a3REz9TnkT
	4G8LGDis63V6pOQVgFb9P/jhDyMDLMwYyIGcw5eB962+jIo4UH4L9H5oNi9rONXIKLp
	kDQQCGil+6mQX6YWsOA27UgBHFDowkf7gdywkCOY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645975284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EHv5FREDhmBJvU1cHbIz2m9aZ7Gbsc1WfXQSxxVLop4=;
	b=bvHg9d4giHUzQfA/6zLjsyTqZITQrGTFngDZ4QD703+Tn3M4jnjtszn8u7ram1FN
	UJPFyY2qCMccnS6i9DtSy4abi7LS7IHhYSYcwbmEjL4nRukDaocsnR2bQs+6ObTu1/j
	1LxUCTpPgqexq0R+l8QZpe2/6hi9nkbjdUbFGTOM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3bc5ac3c-9387efa0-eaa7-4101-8dac-db8c72b66684-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19b79e1eaa0c4eac5c9908adc4e6168f88604da78d7b5e9bde6c657dc1415e26
Date: Sun, 27 Feb 2022 15:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645975284
