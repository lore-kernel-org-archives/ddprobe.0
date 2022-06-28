Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7FB7A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 19:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656446212;
	h=To:Subject:From:Message-Id:Date;
	bh=ngEggHzw8rZ66AjHpJlfd10WaO0nfFn3mxPjpZGg8Uc=;
	b=RJJeU3Bfnwqq3hptHdXCMg4ds6LEkHNm6Z23kyjwVA6OiWRWEyWcOu7CClajSHV2
	vxwaNXZMC9NbyW2P5HHnE+twpZTZEUwpBf71Yg8lJsC9j6QxgQolfK6GYzVBlZc7aex
	ZzDjqqGdz78TQ+U4deeXsTb1SiOoipykFza8PoNU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656446212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ngEggHzw8rZ66AjHpJlfd10WaO0nfFn3mxPjpZGg8Uc=;
	b=W1QPRBHZ+0sfOzcxGUl6I6TYsO7ycce8j2KMz+63Pb27fCy5+PmARtzrrPJnmqp/
	5onlM+K6vkvBTfZ/lsEiHWZRgPKdfgpGG7bac4kO7dLfD55EDcWiDUiQ7BXux0WDfsf
	mNB92sfn1EL6KC3Cw9JWNnDzeGnVDyJ8UdRgDQ/0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181abe358aa-665c8b2e-9b28-449a-871d-d994eb6979f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94bd77aa3407a3b2e1078f4b5a507b646c6afdb409529afb7f62a57eedf999a9
Date: Tue, 28 Jun 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656446212
