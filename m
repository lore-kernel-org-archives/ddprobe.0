Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 812B12F36
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 13:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647522084;
	h=To:Subject:From:Message-Id:Date;
	bh=8qCQ8LDbpzrQQmX5wxljAi6MIXqY0g/bDrlmkG4pGi8=;
	b=HEafykmBbp3oIowYubTcnx1pNb2sws4dXvQLjaFUvRIGgybEZ0RfkLPYc2qADyW2
	KRhTQDUhkk5SULqQgyjn5x4sMnG6YYV1+4iwIZgEaLFvv2hQrpUlQnNCu1Ur8fPftk4
	5xKJ9f+5tbdfW7o3Er+L0aTXW1bFROMIcXTumP+s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647522084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8qCQ8LDbpzrQQmX5wxljAi6MIXqY0g/bDrlmkG4pGi8=;
	b=ZpxdA7IpVukxpNsuCOddqRBB+qpmIu+z6Kv7K6JWGf8D8oF6/uzFYjlPWhzs/q2N
	w7fGWL4gmEngYgaJ6KXeTq3rObgV8c1/RIVhgbPekSoARYoe5Fnswkf1Nxq6pD5K+NI
	wECTXPpAt97yP3hOhg48JnRM+hjjTJ1ZgVExuNN0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f97f7f77b-5273dca6-dcc5-4f6e-b497-cfd3c4d272c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d33f0550b3a08fa252692b7ece0cea8bea87b313375d4f515c088109067e948
Date: Thu, 17 Mar 2022 13:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647522084
