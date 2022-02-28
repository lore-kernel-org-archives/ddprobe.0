Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB8D55382
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 21:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646085084;
	h=To:Subject:From:Message-Id:Date;
	bh=UMMeohnwj8PdZ1BjazViB5KTDrlIPet7Qtzc1WV2TSc=;
	b=DlrYwKY8pnfyZGMDMGjq4cv8OgaSccko1ZWsM/+S+em1pIDL5ii5YnOTXK7Zx6hI
	qi5wDVryeU7nwoucrvijAUetlm2gPPfXo//lcvwLDjnLuOlGwsEPmVebYuqNgC3cb1i
	IQk3+MiBhnZZ1ryyPcWjR9+oE+IDAMbd2sJMEZOc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646085084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UMMeohnwj8PdZ1BjazViB5KTDrlIPet7Qtzc1WV2TSc=;
	b=b59zAmAMFC0IYUMpGcxWQEMTnriJV9M/BQFu8w7bDTaCR2PW+AILzBa3CaG9mz/G
	82KHfw0CIbfVd21k2kWzoby92WTWuwrw6CMBu9Djr+dJtxlrLq9TKnC9ll76y6gBSD7
	7htleYs49feaknt0ML+BPzecPfs6Sj9uYRHV4MvY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f42511661-989d7c91-6924-4150-9574-0bdf985ba4d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3dd12efe578e0b289c334d72397cf8fdf9535cf4c525c1a5ee57edab35a914a
Date: Mon, 28 Feb 2022 21:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646085084
