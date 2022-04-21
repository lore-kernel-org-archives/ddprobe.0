Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196A123B3
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 20:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650573898;
	h=To:Subject:From:Message-Id:Date;
	bh=w4poSUyQTTTzHFNRz/xNFrAyAxKOCKSUqfjF3vb6Xdk=;
	b=Du579xRMBuHmT61YiwmpH2zw5OU2y2frj031ZCUMXk63AIsSZW5vsKNwqL6kZhMR
	3JDuZHu3x0f+JwRqqg6XdpTJohS64slSic6RXTRvbZskS9OlyNzO8Ysq7O+T4xbmO5i
	xCwS82KA6Vf2oOLqfINlvwjj/jzMfD+mlgtBVddY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650573898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w4poSUyQTTTzHFNRz/xNFrAyAxKOCKSUqfjF3vb6Xdk=;
	b=Dt51FexBRl9FNXEgGaPTWKIfIi6z2R/B9gUAZvrUqN11sCSFZDLyUCoI+WzCdKXy
	dYTUWumzZ+yxPc6OIHiUNMEzzP6yRV5kdXkYqCQmF8bZ8O2d3scW8WykMhsQms2JWey
	yd4wJrcYr/UAXJvNqcm3IfdKfmWvM84wTdiKzxwU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804ddef238-cd80237f-3a4c-4ada-9c0d-2b99bd3cde5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b82ea9a104a0e73a332dca593fe2033e562f6a11197d66a742ac5fadae9e9fb9
Date: Thu, 21 Apr 2022 20:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650573898
