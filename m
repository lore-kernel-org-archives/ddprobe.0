Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFFB57EC
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 03:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645586785;
	h=To:Subject:From:Message-Id:Date;
	bh=5GxUb6MbfQGUd5CneejiE04jlG+aCllnIcVYW3hFZyU=;
	b=KOR2KVJNVi6KWSqcfGOvV7MzgYyg65VblWgjVhlB4A9Yl7mkFJt4sStLe8lZ4aLy
	G9troiqVbuQlOecH3+f0OFhpTkeZYfMzyMMSyBli04Tvfkr58w9e1Nu9VEejZerFtGT
	1vYIqpcHo5bgCmXE3MxhDLr11UaiHaKtqEIe86lc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645586785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5GxUb6MbfQGUd5CneejiE04jlG+aCllnIcVYW3hFZyU=;
	b=Jk77S2W1Kj/+T4mn/mD/5SG5hewXDCuH1/7fRnANvFWjTLmrcwYHcj/ImMagpv3/
	CtHvdR7iOw9HJ+G7Unkx0Nlr5vnYY2YOyN4XvNtoSCReS3ohW78F5fNfWChLxTGGIDm
	sbGZlAqyc1xy3fOft252KLvUBZviqvBFcVEIST70=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f249da250-24977aab-0539-481d-af76-ec17a670264c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6a664f0bcdbb0f5202a53512c692ccccd4031c81b4f0a1e550c74a6bb647740
Date: Wed, 23 Feb 2022 03:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645586784
