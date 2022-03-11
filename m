Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD7433D5
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 13:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647004884;
	h=To:Subject:From:Message-Id:Date;
	bh=NDWoc2N5J/lHKuVaKPokZVwRY2B+Ld36BQhlfaXqyJE=;
	b=UsKxlMfh5r3ptPRRaTn8Dpf7wu8JZw4k51vYtIQ7bGKMGDRkZK9DiqHmnxx+xlKR
	SDT6MzpeTO9vzxf0fA6fl8f0+5gps+IE2q5KYUnd3IDDRaT+nIZXDkxm5gYor6Itw8x
	RrDwsfX30NTsBmuexzrshu/f0RXO7d7eRCBAgz1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647004884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NDWoc2N5J/lHKuVaKPokZVwRY2B+Ld36BQhlfaXqyJE=;
	b=a4nOP8qm5HfRKqmGLC9O1l4/BFVJ7zqScfqNSTH/kNLIcPQQq71w5YNy0EA/aA9F
	LSLAaVCNZHZMsj2pD3M/r4YDKelV2CKq8vS/+kgs7AQRxiWlM+nruCuXdLUPKoBoC2W
	K3IOcoT9jCCJNgHqQxD7Ig4fXez7wlPg8XLkY16g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f79241f27-a5127f94-966f-47e4-a657-482645b4213b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f96f4e68dc695314e68a43c094292d903a46dbfbbfc609a5f4da3faab8b6a384
Date: Fri, 11 Mar 2022 13:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647004884
