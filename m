Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F93B36A
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 03:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646278585;
	h=To:Subject:From:Message-Id:Date;
	bh=R532VqbwH1gafW1kkXDm0lHLD6jUZX8INn/z+lzpKFc=;
	b=NhtQMwd0UUEUVCU9gwVX/c4ALnUD9V/nFPmm6vmZTq3117CHBktSw52M6WRDYC/L
	EosYwge5swSDWZ9PTYm3RA2Kz6hXLJpH+XxdVACqy3O/3MNMg9nAUo5FdLEpNrrAwCn
	8GdFsj6T6i36zz47c/oTY3csdKKUKLiY1ACSBMPk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646278585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R532VqbwH1gafW1kkXDm0lHLD6jUZX8INn/z+lzpKFc=;
	b=RjCYtBy9Yv4hgc4RmrtxDm2dy1EbxotnVRuq4YveDOrMh/cFtYIEFVuXP6CneI0j
	SpTfpJ82MFVlSAOMjeZN6O60Ao+sSY1+u6SymU7rRL3uuqzv+PTdFYh45GGRpLoQRos
	7FLZyFCskcg3pJAo7ONDs5kO/f4iZfwLJCcepx2E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4dd9a9b4-eb38d587-2533-4caf-811c-938978fecfea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 866fd7263a4f17444e9d0c7705bbfaae55ef2b2ace6a8becdc44b3da0755c3ef
Date: Thu, 3 Mar 2022 03:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646278584
