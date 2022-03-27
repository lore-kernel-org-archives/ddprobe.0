Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B94B15A5
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 13:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648387318;
	h=To:Subject:From:Message-Id:Date;
	bh=d83fhMyXUr05cpZSKUm8agvNrDBkZIQS6ypjY3/wWVc=;
	b=F2mUbuIFze35Zywf6F0RiwGeddPOBwoXPCSVhRQPgyRrIoGty+JTtnLZcEQ+gIAy
	2BwJ47Z8YTqOccFv9D6UlVv/S5H08TtvKNjs/VK2xij53GQ/EN+7/vsUNRMH5UhXuTO
	TTVpr7wUPCrxXHzr/8PjOVgnXm2D8/j8d0vlKTfY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648387318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d83fhMyXUr05cpZSKUm8agvNrDBkZIQS6ypjY3/wWVc=;
	b=Q/Puvu6DpjrC+fnzNTa791oonV6P6IFOEfG6Z817B5u8v8pZGyLkaJ9qMOycXFFS
	W6hffATSdSmb5dO19LLXOGD1zILUrE8Pix7fpZdrtjBDP+iS+w3mhSnvowxdqzwVRqS
	Eb0YDnUkjSVz5/N1ll2x6am/EpRw8jF7ACuGZxbc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcb8a61ea-ceaf333d-d389-46c1-8378-e0a9ee88587b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a4d9fba34276edd825e4f684ca7ef568de2d8b6762f7c14bd651c32fac2dacd
Date: Sun, 27 Mar 2022 13:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648387318
