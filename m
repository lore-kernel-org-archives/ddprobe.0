Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11F87B
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 09:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650014338;
	h=To:Subject:From:Message-Id:Date;
	bh=8fHI8I4sQDQ28LF2oUi9qIhmcOPBoN9FEqXvNqUAI5U=;
	b=V4moiZYlzwmlAmt3Pz8kOmvIOSa9FZVro78ZXjL8VAtUQMzUujPSTOxpQWIr9+61
	VENO3nKBMeMgNmqYPfZDwX7pqYBaHnwISYXQ9aE+zfowrxff9AvoL8zsPeAPNBeVWjK
	KbevVww8T+0fvxdLun9YpFFfXu4wmzfRR5PpSS6g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650014338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8fHI8I4sQDQ28LF2oUi9qIhmcOPBoN9FEqXvNqUAI5U=;
	b=GmlxPkWdTWe6FZSFp9aeFLcT5DpGc7Y0K9HiwQM+ZoyvbC5eRT3KOuSK/uTRgjSh
	zX1Z9MmGvoj4WwtOa9XqqBCk8SJIHbla8hOexMaMr5LejmpHos501XLLIhT4Uijyv2o
	rAeYfbsk+TfM+hgYWhNTwMWOXf8oHJobwaQosd7g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802c84bcd8-02a117f2-5b23-473f-8557-921911326fcd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7186ee5faa2394b5e3a37f274eb7444825dada7891226b4d58485fc613c5516e
Date: Fri, 15 Apr 2022 09:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650014338
