Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1C222F26
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 17:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647104785;
	h=To:Subject:From:Message-Id:Date;
	bh=Ww0hXGDW13jUrf0xFPaf9BdI7i9cMTeVTXTz3TfqK5g=;
	b=B4Bwx1f5X+M9HRI/nyg4iXJx2S1/PTi8K1UH6EL92B05RsLOGpEHvbmxNEMsTkUH
	jt20e8Xqtazeei+Yozf9huV2BNltBCpLVsrIKZ7aNPMN7ZJDDm1jF4LFQLr2Rr9siYy
	3LftS6rdV2CaglGjH5BWjqBjuKsZLVdnhvwpJc0I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647104785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ww0hXGDW13jUrf0xFPaf9BdI7i9cMTeVTXTz3TfqK5g=;
	b=UlJTEJydpT35xWKoY6At35LdZ84/oW4ZV4JEU4B1JdzfTiW/+n4K10zBezyclu5m
	xxQMARrRHCkQ9DiQw/nMgRf3idznYhGxB+fE7ckBjy6ILhJuAJs1zEuWrI4parjEz5V
	JttHL0Kbavcmg2UBjh1bPfRSTQ/mAtfaUXkhf+Zg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7f187965-34645c62-d550-4ea8-b0f6-2cf5679bf956-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d63b5baefb96f8272ecd1cac73a553f5ac42430fad9e898396ca9b52cbb04f1f
Date: Sat, 12 Mar 2022 17:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647104784
