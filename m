Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A127E57C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 21:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645307784;
	h=To:Subject:From:Message-Id:Date;
	bh=61UpWDy3Fr+qo7l+Ltt5g5femiWdBac6rViMCaifyLI=;
	b=MGILoDd68FjW+Chnv+JTngxWF043A6P5V0KwHy1JRUDS8xoXKFbF42IKwd8hk3ER
	g1ndEW+x4CHz7LfrvlrOREB0Eu7/GrONiVNCRKzJOpKafP++Ab7F1WvuXYBMebPTOKr
	F66Ph4OrysAY7211r4eok9PI5DHuOdMqZNXisaBE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645307784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=61UpWDy3Fr+qo7l+Ltt5g5femiWdBac6rViMCaifyLI=;
	b=bSMo8cb9ZulrBm1B3PnMhotcZA+5OZP0v49b4b81AV2/DFomMpzKmBtgRDTbCgBh
	uIyFcqRZKtCHAjtyq2kU/ZNXGfvLYzTWeW6Im6yz65oQJPLMpi53PL+Js2EuvzXqEo2
	DXfIq8CRcfgVlTzEQGWHD2wBRWYMmBmwS5aFcZvQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f13fc6e1c-75175c90-f39c-4cf5-854b-65539644da54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8563bbeeda220ca78150771c96656f4bdad4128f0f33ba76254d60affaf99b24
Date: Sat, 19 Feb 2022 21:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645307784
