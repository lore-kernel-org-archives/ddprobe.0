Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506D12579
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 14:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657292212;
	h=To:Subject:From:Message-Id:Date;
	bh=fzRb6vD6WU6HpPordWKqsm7NjX7W8Fg4pEQpQw2PzD8=;
	b=P0HNC8+t/Sn8gUQBZyruJYkQo9zqVCCh+ZDDIt7donDXigoympy9w90QjNJ92r9A
	KCzTX/JeIrMkFTghwf1ZUzQ31zv1nGGxFwuRphy5Yc9MSwsGxnZ2nPGHpVuauQh5oB1
	05X6tCFhHPQSqMMdematSxMq+XujbwAuym17DGQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657292212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fzRb6vD6WU6HpPordWKqsm7NjX7W8Fg4pEQpQw2PzD8=;
	b=J9Gk/Y9Z9hWIr6SgkRK8S6pYN+mywv00On8VdegULdwHvkwSdGgbgNBlvQA2xRSa
	J1BmD0YLrvnCCFBI7qIhm+TiMxvDNxcqYgrrUX5tKbdQR8/bAwn0IBACU0CtdZrb6vS
	gxP96b30JETl0gURsSHyaM+9oPRF7nbmTHg8FvU8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181de50483f-f7226e44-dc45-4d90-87c8-f0d7bc8db59e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f422d0973efaaeff5714412f85e6ebb731bec4736c3200777fe157793e31500
Date: Fri, 8 Jul 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657292212
