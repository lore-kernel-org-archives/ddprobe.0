Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A98536AD2
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 21:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645653385;
	h=To:Subject:From:Message-Id:Date;
	bh=ECfEOzINrQFxSKYJSEKdGl2ptuxJKjqCns7bQAXTbnQ=;
	b=dD7fRx/KhRycZKTNv7U0DZn26XAxu9w26/hPVjlbunFTbdCvSa1I/JNB3BHDTP/m
	wlf79zD6ZG1GuHNEhLWgYuXiOftsnuIY0d9SbwD1np5ww4GdvFdbBSLk8qClgi7vre2
	3uAhQOVHyw5z8DfR8OpBLCjwUq5tHOsDf2pjS9eY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645653385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ECfEOzINrQFxSKYJSEKdGl2ptuxJKjqCns7bQAXTbnQ=;
	b=Rjs/HmRT5snPAL78Khcd7Poq4/o6DTgju1nem83fZJYUxGN9DB0Oj6+oTkEQYpwh
	T+wC+qy7Cif+rvWcgh+VLDNLxnHQMXtTLwgyx4Qmwl1InICAH93BSFEEcAnsFOVwzfN
	XQYBWh2lkYr5I4RnK40sLdtonKdHZQznGTVSQCsM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2895de4f-57e5de99-1e0c-40d3-a2ea-3e0e60b9f71b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 162701dad951b1679a4a72a4d5a3ea906f8dd357b86bf86cad346a8596d8ddfb
Date: Wed, 23 Feb 2022 21:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645653384
