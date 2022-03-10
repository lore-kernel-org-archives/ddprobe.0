Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7917F18D
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 17:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646933785;
	h=To:Subject:From:Message-Id:Date;
	bh=mo6/8YrX9kvVLG8IkOyAPWJOuQNbQaICRpfkM31BvSU=;
	b=XcIm2R40ObTelTKAnRkBiB8Sw1xTSd/LkfpJlHtBJVNcjsbDCvW+1zDlFI++fKNo
	baS5eEVKDksIkBdlwpXxwZ1cu9IGaFXmuUb+/Cd19BTBdFGs9P/KDdIjO4cVWiuGIjA
	dmkus00rjTjlwAAbjyNMwkrnaxAZ1zeOLz70XkYk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646933785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mo6/8YrX9kvVLG8IkOyAPWJOuQNbQaICRpfkM31BvSU=;
	b=lbf34etOM9C9zHXhE9OLQQCTOx81MqjetXPxlVnn2ITyIU35ZqBVOIMG9AohC5Iy
	/1NgPT3bHifwd53jYxFK2UpRoCv1DTwyZArOdk8qzkMtN3GeVm9iuoYCFR4ISacZPz+
	M8BT4a/CLSa07FrX0e4XQ1IINdjXZDWr2S3JN7xU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f74e738ea-3a0d5e86-c1ec-437b-99b8-db097e949e02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d8f0ee28db869e5755867a87552d7896356e5f69ec134ccd83316f0f5e17916
Date: Thu, 10 Mar 2022 17:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646933784
