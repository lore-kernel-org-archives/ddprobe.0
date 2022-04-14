Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0672F3A
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 17:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649957878;
	h=To:Subject:From:Message-Id:Date;
	bh=T+O0MC4tTjpuC24D6/5n9DoGMw5P+3v9/I6KU0i6AtI=;
	b=S2h0o/WxTWJ9Xy3YQJu7azXkVm51H/G0EwiQ4ebDWZknlL/3vpaZKDw2f1S7kn1g
	maRDRatNUbCCqMVBwO0VHSK+IqayLiXHQ+W07x8B/50HEgzmBgu8GIn9cilFRrGsqME
	uVhxFc1QiGQFmt5Lzr4UBqk5jcrb3aaazYqIsvP4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649957878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T+O0MC4tTjpuC24D6/5n9DoGMw5P+3v9/I6KU0i6AtI=;
	b=W3hyKBThcW3XR6dz0w+dqzTOVEV7sTnVwaQpDEZig8mBMmVoM9996TxN2iNO39Xz
	u7iSGe/UeMCYD09Bf6W+vPmGxAcl4ZeJ6xddddWcmzhsJy36OIPhxMS+1osnMAlK2U3
	Ncyq/BHSN5iWm2uy3UrcrfNUyjJoHp1IdlIUY5pk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180292739fe-a52765ef-8f8f-4f98-a2f9-9953e6503822-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56104e2c0b1e446f349a1686e49041b3b46b50b2fa31cef7bcec13a672eef996
Date: Thu, 14 Apr 2022 17:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649957878
