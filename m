Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF012F4F
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 21:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651787818;
	h=To:Subject:From:Message-Id:Date;
	bh=H/igbyrO6u5bqM9uWLFmq9vkOvykKU2ZnS4a5HC3MGc=;
	b=GlPb0KjJloJqr6TngKs1zkg0FkYGouJe5PNhrQ87f/tSmAYZ/I+Kb4Hn4nT5hj6x
	wqoaHrTNFUUS3lvA91groJJwQEeB5nvyYrvOALi+f4wC8UN5nNlRmG0kggtARWAKLB5
	sx3L2kNQV1pLSEc1W5OOxfXRRopPAokEEnPeFBrg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651787818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H/igbyrO6u5bqM9uWLFmq9vkOvykKU2ZnS4a5HC3MGc=;
	b=NXt25eklsaN7/L3Ka6ukfrwm5wtypcNjb+BnzAXtaKo9ZFO5ztH2TIlblZLCVGul
	O+kxMS36Ti2yZ8Nzqc63Iryng6tHoS7p8aeiCyLV27MvrWp8J+rwIa+1mdFYrgXbNBY
	qZXa7nCaQuFedvEp+e/74ZXsAZ40ZT2+9F5dIHOA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809639e525-bceb7276-f2ba-4604-b55c-229a2b622b72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 531499feff0662f1601e843612439ea2b0a457f11c967f6ad4bbf56577f3e676
Date: Thu, 5 May 2022 21:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651787818
