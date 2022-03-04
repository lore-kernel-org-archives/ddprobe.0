Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C597A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 12:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646397684;
	h=To:Subject:From:Message-Id:Date;
	bh=NprkWPtMrJBGALwQT3gsfccJtp9O4AQDCX+bYvj2XDk=;
	b=jwbbBorA9vVprREXOEkWDhV0a+Ao7arJdnAjzIVP/P4N4oBE/49gmpWohYqu9bTo
	+uxsfcJZ0FmQIsfyl6ICt3OxRx+AVWlj8I/sGMzEDDEU8PFd8vPnkZ22wjg4N/ErS9q
	C2OBLN+K0E14EzdogB0soWX8aTd8B7rmAh7NUOdk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646397684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NprkWPtMrJBGALwQT3gsfccJtp9O4AQDCX+bYvj2XDk=;
	b=gl56Q8bzn64/4G9/vnmlMclRYWvhIHZ0xEM4LLNJvFFyCBHnO4BPuD/SaWpsWZNi
	nF7Ok1xzpF+mwkkukG68keUiIRjPQY9auygr7RWNyOI8k5Gq8Ac2Q5ihYyhuo1G35Ch
	sCqtnPf3tiBLbY8A3InmTuoBLnUae35qgQTo2kT4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f54f2fc1e-261e2ae2-8e8f-490b-9d2e-5014129ef75a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f69cf88b1723a80934e4c313a6a615f5c29b72341ec2df49959394ca208262d
Date: Fri, 4 Mar 2022 12:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646397684
