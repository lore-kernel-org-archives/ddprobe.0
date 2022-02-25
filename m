Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F5E1FBD
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645785384;
	h=To:Subject:From:Message-Id:Date;
	bh=buDU/B7iovodjr7XCfZgiwOtz3MmYZ0UOMx06Xr/NmI=;
	b=SVclFQJpvokrG8abWyTtDRNccVYv28T7SU+Ca3j7tatRiFKL+3kVQCOH+vmMB+Oo
	Xq7X0Kq38jlT30TLfcR1BAdMajr3l09xeew746rMwqT3vZRRdtGP+WjrxGgW1zEf+OY
	Zg195RvPD1GCYmZpyItaN1M/pl2CMGyHc3iSmxto=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645785384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=buDU/B7iovodjr7XCfZgiwOtz3MmYZ0UOMx06Xr/NmI=;
	b=AUZd90+kYznjdfMj3FdIs7v0iCLhPPaK4/qgNEVyN+B8e6JJCDjAd8t1nSeTb+qJ
	Du1Lu9A4GMpWrLrBKItyJkBeFZNAKeHopWHnsBIGBo+bLYPoHyBVvZB7it8MYshP27w
	iFQNPLCOk92qHK4Wva+0OyzOVKpKO3t10N1sKJ0k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f30740725-24ec08b9-22a2-4e40-b747-dcf611a35a2e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5035ec9537049d849d6d9aa4964c582141429f646a1a988f946b6c0d4f097b3f
Date: Fri, 25 Feb 2022 10:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645785384
