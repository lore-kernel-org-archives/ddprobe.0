Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22C6800
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 05:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645594585;
	h=To:Subject:From:Message-Id:Date;
	bh=tZq6Nq+PZ2JIAqXLNWgcr4MzqAiL6co9/eK6kKAyZCg=;
	b=TeeZv4vxZVB1oMkxJhqKuoAQPXY7K8W2TrQwJZJbl6+lmmH1tEwynM8nmJVA3Xmn
	CaMgcvWldVXvstyaiEi9nGAKVNFAwMNAv4luioce8GeRG2GlcFUpm1Bu5IfBkZJqfml
	sXMhi1LqLKK7nZ3v/Z+oIJfIVW2fMYlAw/jrs8og=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645594585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tZq6Nq+PZ2JIAqXLNWgcr4MzqAiL6co9/eK6kKAyZCg=;
	b=WU7P2hiB544pHUdcoPjF8JPoTIhBdFInj1EPD5wWhkj0xNcR8Pw+VBs0IpJrJMrA
	b/djoSlSS4Vp+zOwdsSv6qBsiW7AzSGuGfc77l8QK56Q18M76HrDZKunP0Y32wIFdaM
	eoE+wCSkL0CZNzmWS+53QCo+CcrZS97juZL1oxho=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2514a6cd-916fa6f4-c387-45d0-b8d0-9dd080dc4b0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 693b0a3259f0b46adb0961f0dbba045b254d5cfcc77977ce097262b34fb6357a
Date: Wed, 23 Feb 2022 05:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645594584
