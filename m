Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6A8E4352
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647523585;
	h=To:Subject:From:Message-Id:Date;
	bh=HlPTybQLC5++ZfnJd2ADpknnxCcIH7Xf7gSBusHeQKE=;
	b=jvq7zNiNmgA9OMwQywUepNDvLux1FTa+XD4E0lSxbmcq24voombG06EjDmq0ZCre
	k8uwanh77Vi4+JF/eiETGjfs9PM7ql0oG+9rT00+ivUYhtEB/YPj/epxP8K/sjbhQ05
	sMHEcyJAWOR/D93NOTpgW2yGvfWncvfhgBoH8HgQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647523585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HlPTybQLC5++ZfnJd2ADpknnxCcIH7Xf7gSBusHeQKE=;
	b=CNQAeEUoK09B5rDyKCiiwK3Wc7qb6j2RaY0HA1hPuQkFLKUI27SvonxxlTOhlgAo
	+YEVZAh1y6wtsnCiU/EU6t7lJyfnQQhkKVjpLu58v+tAtJ5gIZoj0SvYUIZZaXTLD3L
	c+Ptd2VDBYFkbPSZir7l6aM07UhuVLYgGhsbeY4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f980edb22-c6b34146-141b-4569-97bf-aa7e9d9f43d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11017a6e37c13f1d6ad95b9797617fe15a612fd9ffbb66f4555eeedfd03fede3
Date: Thu, 17 Mar 2022 13:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647523584
