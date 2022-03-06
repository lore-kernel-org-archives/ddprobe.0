Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0EE7A
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 20:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646597184;
	h=To:Subject:From:Message-Id:Date;
	bh=PyUICErMdiB8U7Dks5jmXqKRVSxTyjXk1H0nT2ThNEY=;
	b=LIiSB8WAmeaVKY8j9aHAkJ9fYGz2tKE/xsFmK/uOBbALrvJ4fysxCsONWdEWqcy/
	nWijKrtqXkA2pGKpBULK30hPVtEoLi34kmlwWjt8KAKxts3hXOrdyVprv2VQspkBbXM
	DWwfT+KVAESujA4RofMrdtOE+iv+7plOCqFBqjxA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646597184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PyUICErMdiB8U7Dks5jmXqKRVSxTyjXk1H0nT2ThNEY=;
	b=LKUT3g6a3Wdn1Hlz9d5PhKJwLNbHUraxXDiZ6AJ4eGgxykaCAZZg9WqBbpksRA3E
	5VhPIuqGqb4fEGLZyiJvT0JQ3YKjiXMt5wyC7s8MaUrMj6LA0/7BqdxmQaucxllDOZq
	eQhp0VU4Jk2JCWeU05OW/G657exxzZn9ckv9X7nQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f60d71cc3-4abe6a70-0f06-4465-bd7f-83268f7fd86e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94280bf566136c44dd40166ecd6fc868c6ddb7fda6b9a1f718d1d1abc6cf2765
Date: Sun, 6 Mar 2022 20:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646597184
