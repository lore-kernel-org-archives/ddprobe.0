Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA718160
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 13:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645362385;
	h=To:Subject:From:Message-Id:Date;
	bh=UhRKpnUEb5U2PAEfoS5nIOF9cD4YHybeMat+KyjVFc8=;
	b=DPB/Igwk4vx7UsTlyAXz543vQPMVhhfqzlNuPA24ESWuHcY31dehLj6e6/SPBKNx
	iAPYyYnnXkUPTow2VWPjnLBb9jpw+V9O5CCEXp4jw4XEBvMD0b+/Z54oR0nPoJur+ML
	uGEgw5wN8WF8X7Kz4xVgqC0e8YYS9PhsMXU/YX/M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645362385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UhRKpnUEb5U2PAEfoS5nIOF9cD4YHybeMat+KyjVFc8=;
	b=QShWxZzSoK7WJaImdJ/PFWPdZ6zYd/HGTG4ZXnAUa5qNgPUJ6N+03lubeeBykgJt
	KW4SUMwQTjmdXzqrvmKRmPGvmHYXaHRTE9yO1zk0dJ3gJnmd2q2gI0AezxJ7Oeb3yfp
	WKwXt67AnDsyf/cI6eNzJSwJSl3qLhqccBoLgF0s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f173d8f9c-d0ef3057-67e4-4e15-8dc2-fa3d4989c177-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 770f3a0abded05cd44c177106bbc2f1a37f98b09938fed9522053fa885a30915
Date: Sun, 20 Feb 2022 13:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645362384
