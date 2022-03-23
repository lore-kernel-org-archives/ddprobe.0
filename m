Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A83ECD
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 04:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648008684;
	h=To:Subject:From:Message-Id:Date;
	bh=QZ0nP6mUDB5D0K2a/27an4zVBdWaJ6xzRvVcIgJXBgI=;
	b=IX1CMC9LDurk+QY5w3Ez2gf45c+wL7TtuPmXOzHSc9MY2Ae4xOh6v3+bWEI4pu0+
	I57NpFqx+u1zoTvWNgT5oicyHiq5r5HF5eZRwyVx86k/Xkg0n4pD3gpqxMY7n82Z8Ds
	Z+A/szmU5FHFzTbuVUtWTVAFQzTxKJoNINxLtbow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648008684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QZ0nP6mUDB5D0K2a/27an4zVBdWaJ6xzRvVcIgJXBgI=;
	b=CjOb/oePqUB4YycAC0p2GmCg/kmZe7Writew/sF5+j5qGVg06hIwyX1e2YPNeyMf
	sB1mIKcc5LcdIhLkSkeyThHVcuobF+0yXgX05IIW1swqHHsblvKzDH68V8EutnrJk96
	Hlwc0/E7BDMDX2rWYsjDQfxabl0Q6Iy2/Mmonk8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb4f8e4b3-82717762-4358-4e44-b825-d24b723f83d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ab5c97dc88053285d0ebbb97b319b48b97c839a3436a00f039969df8b84c015
Date: Wed, 23 Mar 2022 04:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648008684
