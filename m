Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC02362
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 06:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652510279;
	h=To:Subject:From:Message-Id:Date;
	bh=w5cHlNSPZJX5OTPMGoliL/sZrBpEwYwR4aYCgqmIW0s=;
	b=EbJxRCLw0H8GMVhyQHrUeCb8UJh0CPNgx2mfNK1S6XIol0QYpacxXJ6oSutcmI4f
	fvffVPsQmsTE0uLib2E+SEjVxVgonMMPekyXH9rPHIRjZOOguzrbx6N8HGtUOI2JXA3
	Qr1vifsm6w85kKeuyE9Y5dqfLdeRjcJc2zlopBDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652510279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w5cHlNSPZJX5OTPMGoliL/sZrBpEwYwR4aYCgqmIW0s=;
	b=bI+g7jA4IyA2h3GPHRVbIHO5GO+U94cbiUSKzLOz6U73hZ8ba2AMSLN6Fb55dKfd
	BEYRzP+M8zM6b4JOPfIfZ05MWaCx9XMJ7D8vF0BmTQBNpfSTUr3tOF8ruexTwWXBK3K
	slEZxbOaHBygymox/fGHSfruQhiLteMcnX1OKU1A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c149c65c-d9b7cb1e-3266-42c4-9eea-d6a992df3ee0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e05382a6e279d1b30765426d5b3053e5223ce2b18caf43ac92abec3b4a917e38
Date: Sat, 14 May 2022 06:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652510279
