Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E66C2FAE
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645284685;
	h=To:Subject:From:Message-Id:Date;
	bh=oehvU0L1UPyux9cXj9bTYryridqACabEvToHwUuTytE=;
	b=cXmjzTTJDvktfJ4WoxKS7kV2t93rGGw/TFxscNk/FoQxcDXew3OhPzUPZz4bDYID
	NtpLtqpa+HL9R+f8/qQa6VkgoBuLU8kfGp/0Mx3lfFzVNnXdahmvVi36pReuz8vDwt4
	QeCezp6tIS2Q12/42iJ17vkORg3JE38C+j2EZIIQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645284685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oehvU0L1UPyux9cXj9bTYryridqACabEvToHwUuTytE=;
	b=iT476pwMrl4GNQUDeP2ogBVLlAXv0rDL56lia91qst6jqsv6Dq+9dat7C6dpxQky
	Twa3INGwaQXqJgKq5w4U86z5gMk2AIgG9eDCGmsES82CaTHo3jdY8kNERQ5ymasHGEf
	ySL8DWKj616BrfO8PJWdqiDtndE5U17/0kMUFR70=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f129bf3da-cc5fd66a-8a26-43e9-9d77-2580baadcd51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b5b838042c59fd73360e89202cf51b36db017792fa77f1a9cfc680fa98faaca
Date: Sat, 19 Feb 2022 15:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645284684
