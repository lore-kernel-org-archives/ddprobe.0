Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638327E
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 15:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646322684;
	h=To:Subject:From:Message-Id:Date;
	bh=pe3yZKBKu6H4r9R0Ow+ibY++rPxfzIj5Y3tz//UM+TY=;
	b=LDUjSLGgw4fwIQxVNU9QVQyBf+2JKCC3NUb/JuaDmi9tQsmLJRO2gT4/qbCa5F9q
	thyRagQPHkTMtcojuc2CqFIEog6zfJAp+vrwYZz7XVicOeDhU2TJK/42oemI/D5Q6l5
	ALXSnXvLmp/qkTCQ0bxSv1IAM/QKUIlIdDvzxcKY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646322684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pe3yZKBKu6H4r9R0Ow+ibY++rPxfzIj5Y3tz//UM+TY=;
	b=czjwGK8l+/hG9/0VSO+n25Soy3kvrrzfolON21iIYZFdQWzAUsDLT+ii00CS1snj
	IHPm8lhjQ0TQlG5zreedkUkzXJzI13S+nS6UaCj+NyAKmge1iig702fDkRrb+QHEUjQ
	vMQeYNZPJ/pCpnwv+VngYx/8lHwMcBrPvqLChgvE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f507a9336-4585b025-975b-40c3-8ef0-a453f474f6a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1469d4a87e87db43d18a869b622e1c0aa5472dcc63bd69dd0e862c838a0b0f1d
Date: Thu, 3 Mar 2022 15:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646322684
