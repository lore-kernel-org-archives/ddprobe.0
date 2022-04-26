Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642027E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 12:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650977278;
	h=To:Subject:From:Message-Id:Date;
	bh=vvwjDQ8aiSXvnxYGFqDppOSGp084q0O29qC6PbwPTuk=;
	b=NseqkAbh+OHfcpV2oVKw6+NT/hmmMGN9dRPQOGXrWnlRqqyxeyaXkDd/MiY3kLGD
	sFoawnbomNlLoyPYxxxXYNqUWRv1ALDdQRAsDl3Qnr0r7rYs2Xw0STnsG3F5KUWAmK0
	AQv8+jc++dogfBpkFQ/iTEgq5EiVOcTq42eyxXjg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650977278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vvwjDQ8aiSXvnxYGFqDppOSGp084q0O29qC6PbwPTuk=;
	b=hcvqQ+JqF3ugsoBUJ+i7ZKJufzJAiEwAL/APalY4Q2C9m9uoudZmE+iiD40pnsTb
	n52oRCppAblRow08t3LV/cMTEpMmZ5ZllaeUis1pmutF1NvLveUVQbBdSx8zacvzLbM
	R7etZGiH8lfKVwHjuZN6JYULz/UHcx0Bzo20H3eA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018065ea096c-6db14e02-7b58-4132-8232-4b4afebc3047-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cf92dc42cb98a96ec42206b0816e4319a39be9ca609c3505b5aa94bdcc8735f
Date: Tue, 26 Apr 2022 12:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650977278
