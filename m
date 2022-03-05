Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAA39136C
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 06:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646460384;
	h=To:Subject:From:Message-Id:Date;
	bh=0lCiKqmMu3dV9CFjjaR+OihPs94gshh7OAz8KQ5uFHI=;
	b=MHydv6p/Bs0CW2tbpFvflUV01XZtc9gCbyFSypsRUXHe/BfnctpgprxDJx/oEf8M
	ONkbcxdhHOaE1H2HaDCUtEaDb98LqAS2u+dH70Qgt1QCyBQpK+rWEKpQ01/DjMMJSpA
	WqHjjDEhbbo5mmaNA9WAS4/w+yk6DJDyiN2L+jns=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646460384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0lCiKqmMu3dV9CFjjaR+OihPs94gshh7OAz8KQ5uFHI=;
	b=eMFKnfsRcivFvTK/7I/tMQEgw6Ca1ce5rz+atSA+4cD4LM2jHXnf1BRvoUMr0COO
	SzBGx0YjBlC3ZLA9Sb6VGSX4pvdUs/w8f6X8fHspBrXBjnbUHraUMMjXHP6mQKZYPMd
	3Ts3iD7XQMP/NUT701qzxg2CR3hK4tjHjicGTCQ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f58afb62e-f8cb914c-9cbc-4616-ba0a-d40829f3a32a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b9557bb3a94ccb63892f659acde74f30296a7946b1f8ca55c508bbd4842d690
Date: Sat, 5 Mar 2022 06:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646460384
