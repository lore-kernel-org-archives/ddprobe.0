Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96D9148C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 17:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646846784;
	h=To:Subject:From:Message-Id:Date;
	bh=svQs1Q+PLU7670Yk/NoR6Aweyd+RpNfIjvqMU2wYyvE=;
	b=GPBsrBtaSkTsZ+D9DOEvyjYGvytnaXu88IHF8JS2zeTY7xiSSd99DYdMAutx6Oov
	X+0CPEDGv09B7gXbC+RP38RFlpBwwAvQ/mlbkmi7xiWRvlo1vUczSdCJxn5WGmfuctn
	xD4HRP+vi2UKrakMJSLMZu7nTD8QsRDkwq0b4WsA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646846784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=svQs1Q+PLU7670Yk/NoR6Aweyd+RpNfIjvqMU2wYyvE=;
	b=J9WH0enJiLlsenH0am1qyTyqDRuHI3V/RgL50BS45px4UgYYHTQ6RqaheVt5XSub
	D7Gvl4eCon+bvFn4YYtZ9Vod0tNBB5AOUhD1PYcoi5a7Ged8cknIw2UiFs2RtRJO3uW
	8n8tHaAv3HjA1y/z50EpJDJRuBnyAqFElUupbJU0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6fb7b533-dce9ab17-b3e1-4558-8c02-6c16f20f10f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 156891d302fd41acb566f88531086e36bfb1dc70cf40ae0ecba90fe1f06ca46d
Date: Wed, 9 Mar 2022 17:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646846784
