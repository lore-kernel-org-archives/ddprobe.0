Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553D07E
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 11:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646480484;
	h=To:Subject:From:Message-Id:Date;
	bh=dFCPe0pmnNWmyt79+0TrKEtpQMxr3U9Sx4rL2t5+ESs=;
	b=YRGFVGD8k4o+cLHd/JlNjlXzqfoixbK36JRsvVYKezsXneiH5yRMrf5iqaPuuQR6
	rYqXS7kPF+LT9xDcxXJtXkMV1jv2VrClbgaxdLDn83+pwatJT2k4cJYqWdVESYL/Kzq
	ebhcRjhsLWbJOoPPQDRHMzl6oPzXlXKP2aPurRUk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646480484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dFCPe0pmnNWmyt79+0TrKEtpQMxr3U9Sx4rL2t5+ESs=;
	b=ldEBbq081CoTAoZ/K6gAQ6uXFin6BURJGRv7ayAMODJtXjwY5zIopy5dXn/BJp/+
	xnNu7DI0R4HMcnXmCX+V7josyXG3We8GDY3TX95pBWU3m+2OaoNOFc8F1kXyis1A0DE
	PxPvh3n7LgZsL7lEsOpCEk9bTvv4SU+XuGSexUo8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f59e26994-d5fdbd9c-0d10-4178-bd97-f002bc1b0489-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67baed94e11a1713d2d2e1b53a2d6bd2fc7cdc0405a9e16953e66f80d60814cf
Date: Sat, 5 Mar 2022 11:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646480484
