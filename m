Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA9B2560
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 15:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649430478;
	h=To:Subject:From:Message-Id:Date;
	bh=W0tQ8e/5+GbC6+954DIhhXjFdQAyXGJYiYWsHFQSKZs=;
	b=FIWJIvKTryqNzLaeArgvJj9B1ZWwS7s1j3kLyMOR2Wx2I2RCQrLuoB4s7TweYHbT
	FQ72oTCaUQF8grOHi3oJCBuFDM/JuQBGaVYfXTd6bHytIb+OLOs0KICvVKVCKdDvxbT
	UqCLpR9ZIAHtJ0Fg87x6qrGS6X7qAUORKIIswcPw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649430478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W0tQ8e/5+GbC6+954DIhhXjFdQAyXGJYiYWsHFQSKZs=;
	b=JKTYWgsCLMck2hY5rr8rXMYVoY19ZCtwj2tf0CHy7xd63vfItZX450jHPUxo2VBh
	3LNUYs6LfgWNO9uJVIfFnP97XapIW2p5plff/b/3tz6rRpI0hAYjuRakLyq6rCIQBuK
	KT/yp6wGxMh/eSeFDEZFcDeVbCY2f9HV7a5VeByg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018009b7bdd9-62303208-4e20-4803-b165-15d275c8b3a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38431c933becc7ca3fb545a0c44b7af34d977ac92861622bcb7bb6e7499a5f5d
Date: Fri, 8 Apr 2022 15:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649430478
