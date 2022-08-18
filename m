Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D76E15A7
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660834853;
	h=To:Subject:From:Message-Id:Date;
	bh=atZX+3gH3MNCrmKwzU0EHWwymogb4Wf3pKgM3P2B038=;
	b=RVLiWwYLTlI7m9TNApofx+5tfFu4cPOZogqSErzBhNyyO3yd73lV+fdDKmrHUGA7
	BrGphjS1tnoGveHKBaFLudnTPOvUWScP/ypCcCdj6TPwk9y1evu9+fGAbrk5RGSe/ny
	EdhqHPnDmFDJ5LZrqUI/JGrdBtxqM5gx7O+Y0LnQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660834853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=atZX+3gH3MNCrmKwzU0EHWwymogb4Wf3pKgM3P2B038=;
	b=JBEHTo8vhkXBKRcfAdi9XtngWPr1CMkcaSECkJhJyyUqtWI2wyVLpn2na3LrJGbL
	5aRTeE5rqGQW/BcYB6F5wffYJ8r8nYdC2pk4FgJ4XBOnBf6Lo5biWI2CaU/fHwUWwHJ
	IxblSNywxHY1IRS4SUGDNypxeGIBBZIfPgllJhWk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b178af24-791eb682-fb83-44c9-b797-6678091c6e3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 328095c7fcf058ab189f17bde90a51835942b80c3485b580447bc3a2d42682db
Date: Thu, 18 Aug 2022 15:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660834852
