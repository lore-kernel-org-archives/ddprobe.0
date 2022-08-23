Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5802C5CA0
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661281252;
	h=To:Subject:From:Message-Id:Date;
	bh=ipMD9+K9UL5rqEinqdWGJKuFpIJrR1CYWv2SBk6XEmg=;
	b=YPSEMrDJCn3EzhmwHQhLsKVAxVkTrnSUchT99ReaLCVp/E3vvZAojB1nc7uekn+E
	KHhRH8s14rLax6L33rwIDrqxdlVPhxik4XQQmbD1LPsuiPCmcqFrYxEBzYKc9lWDSIs
	e22q2U1JoS0GxX13nNRMvz2W3O+U2LzPrQXqwUIE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661281252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ipMD9+K9UL5rqEinqdWGJKuFpIJrR1CYWv2SBk6XEmg=;
	b=X+EbQ8N4Qxe1hxSWOhEoMs/aGvJw2nIE8sp30I6Dnh4Rpq87BbNs1weixsxoXLiW
	fHcSyxUR07q/ua73hb23LJbvEql6JTuV3OmWwl/qZLScWPLOtNE86PY6BXhdamkctE1
	XMAVkMAH0nGqeb8DrrMrErodliZBeAJHEaaXwvvU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cc1434ac-714dedf6-c5df-4f69-8450-f2189b48dcbf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b88c304249166c48ea1d6920aa8364a81357c2e8679060999b9f23ad3333e9d
Date: Tue, 23 Aug 2022 19:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661281252
