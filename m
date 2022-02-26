Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 821A63B21
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 11:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645876584;
	h=To:Subject:From:Message-Id:Date;
	bh=hi0T2Ob9O5IJpRFAkSSSHndAayNwJQLoTy6NX/BaYzs=;
	b=ZviIevun9ssRibevVQbMOdSdXaJaHkiXeQhi8Ig9YKHkoHfvvBVcksdN0cM4ZvjF
	trm5g8BTTBBIji+HlUJoICYtDt1Wv990pwZjJ2jIt1Qu97drq4t/2PJU9tAbfbWO+KE
	EMeKqcnQqqu5BY70pAlu4W1EdvYmWLPItpFi5RQE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645876584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hi0T2Ob9O5IJpRFAkSSSHndAayNwJQLoTy6NX/BaYzs=;
	b=KKViL7aOydeBkWy3yec5w3BcT6e9beUlAGWO5DVkERGkDp14AOgoepQoQ7P+ew4O
	2rXMlUlfqzsqZl80dueeK1e5NPXtS2OZaEOcRexXT4e/qtkUu7LyQS8J/7WJ7Ku6mrf
	2LEbD0BJWobvuvG/ccmawZ/hmLOrCy+17q573XqI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f35e3a148-55d64809-8478-4c1e-b9ca-525e85c2b32a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c97c74dc16df115b214603b11901b8de579559ce07a4bca62c6ed6ca294c901
Date: Sat, 26 Feb 2022 11:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645876584
