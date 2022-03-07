Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AEC938C9
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 07:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646639184;
	h=To:Subject:From:Message-Id:Date;
	bh=Er+/zVDNW3kj056LIMsxSpHGYETjkGeDW3ES1jg1e5g=;
	b=e9fOTn5kAeoJOMx0LwR/ZiuyIZ76/jntd2b5QQ9BV7m7TMtWkIHPJw0lNAV3jkCx
	faNNPO7FHXthwksOXiG5K923FSFOIEaM8OVs5zxvF5u832QJKq3P4yc7Wau1MIHGD6S
	vrRSNyuQmvr5M74+VLnXktJCjQt5c5dUAKwB2BkE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646639184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Er+/zVDNW3kj056LIMsxSpHGYETjkGeDW3ES1jg1e5g=;
	b=JcUYmAFrx8s9uMROXeDBNdp53BPwQFy0m6Yj/QcYQ+qGZdFQt0F7A5ccdWJgWcja
	SrhJyrkxYbckIZvbCDnDCtq4uzUZ8kH0HhepGDRKsS8UuniiSCNOIgX4qROc1QQamuR
	S/esqS2WN7qDRDYCtiIwEhM4/qCH2Urf3RaDzSzQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6357fb67-043cf649-5143-40a9-aee4-e928a8d87b93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bccfa9e145d576b56764691a0d9db131095f74d817ad7a2cf41e02787b4bcb31
Date: Mon, 7 Mar 2022 07:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646639184
