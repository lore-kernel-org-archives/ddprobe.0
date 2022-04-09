Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5B6A20
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 23:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649546398;
	h=To:Subject:From:Message-Id:Date;
	bh=Wt8FCfYmx6p2yS4bgazWqyxugbRdiwFmumBvx2jwzh8=;
	b=CUeO+3IgJXOxRCIhE5MwIJIkh4qRImU7C9LDDlRc2cWc2cusCJhqrgyc+FD6oT9Z
	Xuol7LRVb2as2svwntrzdLDYH75W0RPmbqDT53xGYboNszLkP48bmHn/nLwVMWR0aik
	s5Mab/lAM+/kXZfP9G3IeuangRSnKXAtxUqdYKtg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649546398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wt8FCfYmx6p2yS4bgazWqyxugbRdiwFmumBvx2jwzh8=;
	b=AbxkF8DemKykLypjMLocTbRRjLBmOTZKHpxdhQERHLvlD8S7ygJpbfiYr0WTWCMl
	JPjk1hZeQO1nbTRnqIJVJfd5v5FRtm+z9FwH+S/xev+31sKFhKuq3Qa7cb3dEdXGQyv
	zj61qa2rrlALGNFs4vSAwNuV/WbIohqPhD9ApHTY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018010a08a52-04f157ee-fafc-47b5-931c-7da9c58e5ea3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5116df83436f7a89a8c51158675b35f1b57d1ecb11c51de72b7296dedd4a24ab
Date: Sat, 9 Apr 2022 23:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649546398
