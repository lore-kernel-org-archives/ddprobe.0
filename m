Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70BA71841
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 01:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657503412;
	h=To:Subject:From:Message-Id:Date;
	bh=kJu9wpBUgO3P3GgTrM3rujvzakVZmia4Lui113Q662c=;
	b=KWYtVZWqR/2PlN0tHg0cmJc1A8iFbc0+p/e1mfUjiHYfwJXXaggBf2tLcnxTH5zn
	5FBk/ySP6mODvV4JvdbxIgi+ZDV0PrQldJAuiOlhsmY5bqVipDHP1DI3gnVJIeAxrmK
	AVE/6EuicfzyH1+bCV7jhhOF6+ztFFvSFELS8OPE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657503412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kJu9wpBUgO3P3GgTrM3rujvzakVZmia4Lui113Q662c=;
	b=DKTz5+woJcLmWZCrp0T+5UYxadPS/PSHofoLqonwGWgQ+PlGNLcIULHz94N+rW9k
	r1oLFp5L43vXGxn+3HDK+YKXTMdn/ERv4bemlny1zDm5/vhJ9eqLxSxwmv0EBW7g+Ou
	aLr5VTGgG4BfGpcU8zZ4/GtY1rMCLW4NejYcoeyk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eae6f00d-6d573de4-921f-4e6f-bf79-5518812a874d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f4097b1ebd54a2163e136f4cb93126199c4933958de3e974cb7ad323a4afe00
Date: Mon, 11 Jul 2022 01:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657503412
