Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E394C7E
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647620485;
	h=To:Subject:From:Message-Id:Date;
	bh=oD3HbAWMYJHJC71f388Y+mUYMQ5RWYiLoQW4z0Hcqnw=;
	b=cE0zkk3EgLZUIbv8MhJf+7g/y8qaY8C8uhRfM4VtXTvBFlsX879AwoAgRhnmxX1R
	iMqckSQRtcSAcSDeYPKBReCQZ9bjTwGORuVeWpU5Q7JUST1lU2pnSPmePcxScc9trgY
	I9UnhI6nfXQ3O9i7TGQ9XgknTyxzWHgZNMDLCrtM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647620485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oD3HbAWMYJHJC71f388Y+mUYMQ5RWYiLoQW4z0Hcqnw=;
	b=KQponnPDNY5RERGSfncKNs1rpaHuFyXHQOhU3bqE0gqoqXNEZpXFMZ25rz6wZKot
	UGgwPmTnsh22R5F+RWTO01PuvVkgLuqnrN04yNfqGeZBxXOe9LMJHIgrKNZVR7Kf2QI
	HvwMWNqybbrflDvQH/wdVuldpGoTkMAH6IkDFaUU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9dd56ea4-48ab1068-b2ec-4792-bd11-086d6c9211a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0585e2753cda4eab8722e9e50a05cd59f2f8c45c1a97358d961a085634655a35
Date: Fri, 18 Mar 2022 16:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647620484
