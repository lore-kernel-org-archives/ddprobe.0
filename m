Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4283317EB
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 07:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652341679;
	h=To:Subject:From:Message-Id:Date;
	bh=D27ny75tlfIaqo4WzBEu9PKtG/0oE2TNdbQ7rmfisjQ=;
	b=bP2nLs0ExDU56ut1UUE5WetPx6QWk+UqtfgfME1qf1wouaAlEaRespPLN5nHiG8o
	wJc3hT2uBoC4Rj/2TjnFcfscWKemj00bhGFqSD8ADYIMv5DPvntVTm583IFCpCf94tA
	HCdHVyJEwT9Bwv3ToM/24QKmRJjPhvfqJr/nfIB8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652341679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D27ny75tlfIaqo4WzBEu9PKtG/0oE2TNdbQ7rmfisjQ=;
	b=ZwEWlAukf0Kn/hlLLJD56RR+ubn6FtiROLd/9xLiOXsztIN+lHgOhA+DM04gRV4z
	+gpqgqXhDgu+z5ZpHDora9nlE/DEJ/bNQ3K7/NgU9LELa9txIhJ1lWLsA/CjDWEOgxv
	gurlgstMMP63XV0EJ9ajFqZXpknizrmssa1AO/S8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b73d24f0-8a3b570b-4921-411d-96fb-e0e4e91dfbe9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f8a630e2660dcb4cfc2325e5bd0546829e59874845c17b22609708da8b784d1
Date: Thu, 12 May 2022 07:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652341679
