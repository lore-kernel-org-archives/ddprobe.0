Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C94A7E
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 22:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646952684;
	h=To:Subject:From:Message-Id:Date;
	bh=h86araAIg7MWEiqj6KL9W5b0GKvfmiz15qlaScJGaqY=;
	b=hlNZZWocKeIZdP4W6L5HuRPdENESv0xz6H/EF1tU5U9u/s7E0Nd03T/vUMQzIIH6
	rkbtnFtrGGOW4v20EwfCocXFSg3//ybKNZ3aTMJdVH1+QKRPb9gfKhsnZlwPKODXqH4
	KywlVxISkMjxHSAZLoWwMkZsg5wKPuMh5YIGle+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646952684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h86araAIg7MWEiqj6KL9W5b0GKvfmiz15qlaScJGaqY=;
	b=TJzMGNxv+660fF8kkBuVi/cmj5/sP3zxP9tdqaI5E51JwRKQuD6Q77blmn014vNM
	okWNhJi8RcTdv1tOxn1q2f7rO4x7PJv7EsrSdni2yAZ53JVgPguo6F/yrJpHeusLkTB
	2Z3JbwJJS710kY2MaXzjaoDdCGRxwmKzuA6Cgx1Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f76079cbd-cb761ddc-7caf-4ba0-bf82-9f1489871dd2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 800961ec05aee0659dbfbf36ba204073cf867203fb82256fea5a5fd2b4551216
Date: Thu, 10 Mar 2022 22:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646952684
