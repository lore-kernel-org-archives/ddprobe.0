Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D74A7B
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646052984;
	h=To:Subject:From:Message-Id:Date;
	bh=4iw+vVwMqXB6Hl5P5vJtaBXlR61/q3yHggY8xyJg3p0=;
	b=O/x9Ua9q06GzhtUQjxnEcsWwWCj0in6k1xRUA6bAtrXeOeywWjmD1wip6wLx7Jxy
	Yj5isOI7RVHleT41yRNAb5iGvvKAMHSDSwfHT3k5yeFKxPOsp4n3bsFZI/M7+zUqX7Q
	GNW2vigZK4Y9aKywc+nggyJyAT5QhyUpINYEx0+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646052984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4iw+vVwMqXB6Hl5P5vJtaBXlR61/q3yHggY8xyJg3p0=;
	b=ApDD8FjOVIr6Z3lzIQ/HiYWTwNjPA7OddAv8Otx8WUthlKCa46kaufRby/A5iWKs
	WOS8E1okpKOnBPdM2W6vR95aqYwWUdLo8CDuu+HajPlb//aCQUqKm65LLc2UsgeaUFG
	WSDSsyeuTh5lywxBFiFQlnIkvYaHwhV90tI3y2rc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f406747a8-f2f28c71-0ae6-40c2-988b-c136f3084d92-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 712f1cddfae5bfb72fe096b9b324773544b6d35f55aadc87b3b570dfeccbaa11
Date: Mon, 28 Feb 2022 12:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646052984
