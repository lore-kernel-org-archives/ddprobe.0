Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D28310ED
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 03:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648092178;
	h=To:Subject:From:Message-Id:Date;
	bh=VlXCcFH2xbk7n3MPLvDUFb9VCfkVAai6I0GiYUf/LlA=;
	b=C7bnkuczfdbw4ra2PBzCFTz4ZVhZVDYsL15+9lhg6EVm/Po+uJRmEliKcYb8SkXL
	+I+EEf45AwMplnbgq79O4STsN7VOXYJtmIuiAtvE9mzeIjmhXsCxvDsxusPE/QVZ0IS
	MesyHaQi8TYFY/mnsNZgIj5lEwukHKVuK5Qrwzss=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648092178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VlXCcFH2xbk7n3MPLvDUFb9VCfkVAai6I0GiYUf/LlA=;
	b=Lpl8X+YxSqlT7a4E1od24tBYt5heH/vXf/ajw5zaAbamNRNOZ/paR9jcD1+mhv0K
	r3Vj9R3rAL819pmC4KI8yBDICyXlUuW8M76s3qcjqCWUm08bqfuluihqzrY/lrSNZFE
	fvBciGQzX+Gm3QX7/Dwga2UIdMZUVOG+avqqx1gg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb9f2e794-0b3a109d-8425-469c-840f-35dd4f9ae729-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae117dff0837097af6d8ee264339407552c75da858821ca22929171695b6d19a
Date: Thu, 24 Mar 2022 03:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648092178
