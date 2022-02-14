Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 759D0627
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 00:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644799831;
	h=To:Subject:From:Message-Id:Date;
	bh=VkAfSEZ9En9PUN9mNR1WZR6DdeR/nwdEI7nEjuE9rFQ=;
	b=Xh4O8kwnai6Rgncv3kBbyxnqOMi+EB21B5MLCBXzmtwLe7ZlnBPLmWNYPnPHe19T
	953eNke94z/LC11EEqgsSL2VnTsyTNsn7Ymr2zcaeX+/FHQqJvDctXHb+mXSIdp+DIK
	JQre9qQL3GNM+nqP73HLMPHBziyIgtX6ewrY0RRM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644799831;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VkAfSEZ9En9PUN9mNR1WZR6DdeR/nwdEI7nEjuE9rFQ=;
	b=aLRziPsQ+FmOJjB7h9xsHgaYUIQlPX9VBUHCSDZ1jfBTe4w3kBmK1H9NpUTL2WuA
	YQOC6tOe4ORJIdnGRBrApdmP5on1pCIx758ke6Z0k6hDZnpiaEFt9HXKpIzmPPzohhg
	JMqIJEL8wMpKntbhDp6vmdqXS3hekIByxSeTt5YA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef5b5acd3-3f2e8d26-dde8-496f-b47c-3f00cbb94373-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d49373c1c0d8fa93d27af0ec3775fa7d06bd81000c586f2abd1eaa2cc2f61d7
Date: Mon, 14 Feb 2022 00:50:31 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644799831
