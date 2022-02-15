Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636C9C88
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 04:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644899484;
	h=To:Subject:From:Message-Id:Date;
	bh=rQfxNrylUqitTFIgY/W4bC4ZSWwP95fElW4juZTEVxM=;
	b=mYZYGIsefs5awymDGEN78tAUgqSj/GQdi7bYpD01rTJ2cssgh5XMItbOhNCPTPN8
	fPXVuvJ2NyFl5hZ/NtDObFNcgha4dQzWCtC826pRi4nkWnRKbyrqKpLpsLyFnFHO3tF
	7uUfNndTtVhNSA1whC9hfwoeLLwiexgOPhn7bf7E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644899484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rQfxNrylUqitTFIgY/W4bC4ZSWwP95fElW4juZTEVxM=;
	b=csCBd5DDxSrC/YZrRF0XPVJemxaWXm2wMe0DTDIGk+V0nVM3ARZMZYmvNvHa71sc
	yZeR/l02l7JAD14q+xrwF0oDjrSBg3RlhO1+1vAROLouqvlVS8mSun6O4d+RZNjHj36
	Wg8MXcJnkj2kjBvYodK9Y515q/kMTNxL0t17f8Ec=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efba64461-361fed9c-ef2d-4c8f-a0e7-823395280a56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 187a509e638043ba944fe32031194e0a44fbf25d4b04bc210448421e164fa7bc
Date: Tue, 15 Feb 2022 04:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644899484
