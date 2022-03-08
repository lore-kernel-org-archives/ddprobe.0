Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653662F33
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 04:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646712984;
	h=To:Subject:From:Message-Id:Date;
	bh=fc0uO0lOox8VemgQ0TVhvlHXjxsaleJO2+VKtBnE2nY=;
	b=jTj4uSAikFomW9LxBQlAIBpgNIv9kedIEUKH+fxdR91qK3ZGC8m1XGfia4MmcC4d
	5xxNHRI9sxA89i2gmZ/3dNI1ONBLTwjPKAnP4wX683LxcghkK1O0ijusUxR/GxonyY+
	oE9hcPRPbj0gBHJlgp4+fmhZEQB3egiw8LehfyZQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646712984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fc0uO0lOox8VemgQ0TVhvlHXjxsaleJO2+VKtBnE2nY=;
	b=aGsfK5IG8P5/5C6S/yJjjFrIy9DxjR5mcelHLoYVahs4B0SNyuNZx3He4AWWBZ29
	YR6LlZwcEZWVTWoaUEXt8PwlXpm+DZi/+BD5SDcdprjYD1a8efVWJivHBtRIB4bjJSW
	OPxVVftpYlaDCiOJ3UyMqJr31fOuq8oJKUHvyn8Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f67be14b0-8190c28c-a8e9-4ce5-aa33-36a82d432441-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fab0e3f4a469b458ea02ae385240608ba322e7255275ef62a6aecc4c7a7b5d7c
Date: Tue, 8 Mar 2022 04:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646712984
