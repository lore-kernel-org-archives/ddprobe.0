Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1E7B7A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 04:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646369484;
	h=To:Subject:From:Message-Id:Date;
	bh=O8axn4qAy+FeAs9hCfSGGIHsOR4XVx31zl7SBZrxuHo=;
	b=aVavhLsUt9gqT7wsdqtq7DYWbkE2BCWOsE0OiPBv0t/FAgMqiilvILvl7OnTYQqF
	O5e2Z6uLuRF2oltMAI7l8R2lwLak2F65K+M4sQ2N9S/g37G8sBdxQiBwI+Vn5XAZyRH
	rnUwhHyDSVefI0bwjd684xhrwZ8uCSXosI6lg3ko=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646369484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O8axn4qAy+FeAs9hCfSGGIHsOR4XVx31zl7SBZrxuHo=;
	b=AEjiYOYivCx+GyMPsTv6s1avAYYMQAiTyfRyEL3WXNZRaydV4vMp6PaaecqwsNX+
	n6Dk9b+0u8VdA5eoUrnTvEAVKFR6WrCVQr/ztcYDUNt1rQ2NAPpScsCVIAJRc+Zch2g
	WJUaXNxZRQHSIrlKTmggCU3Du7ioc7Q4OgCAIhyo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5344afd8-8b50a1b4-8ff1-408c-bde8-0fc69a97a2c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9549c98f24e1d4b5079c6c7718d74475ba7a6f2a4bca721a4ef126464db4a2b
Date: Fri, 4 Mar 2022 04:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646369484
