Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D12E20E0
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647712584;
	h=To:Subject:From:Message-Id:Date;
	bh=pE7nMmuC9dCv8QF4PD0LpvXm8k6Q7wecDILN+k34hNc=;
	b=hfl6iSEopIOvErTehfYqM+zbW8726pjaIfWWFD0HhRSZ2dnbidbjvPCiStBy5+3g
	k4W6vLA2oZagKEMIk40k7agYBzE0AAuZStKct9+uSGqwz5hDL1DfHRZkFReSGDzzXOm
	uFhv6Fsvh8FBOPnoygneSUVMP6fQks9kOv4B7U3w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647712584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pE7nMmuC9dCv8QF4PD0LpvXm8k6Q7wecDILN+k34hNc=;
	b=LUkVzPv8nmqVkFHa5g42n8Yf+DXKKVbmU4PjxQ2I7IVKxXIhY7xM+h1cKInOwPTm
	PpMkVKfeoo3F6VJvfCtqsIOyQUmsK7YllDh3xro7tw5UBj58xRtaGHwKH8Hm5JWL1aq
	3xW4kEqtDz4gozPxJVnX9EpjOcdzlbNAY9xJxLaM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa352c411-ce4cce66-b29a-4a84-8110-d14a8caef562-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e88d4b8b5bdebb2db27b8e4fadfa2ba7f2aabd6204b400f5c214d3d66d228445
Date: Sat, 19 Mar 2022 17:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647712584
