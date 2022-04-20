Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDE161FA9
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 23:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650497518;
	h=To:Subject:From:Message-Id:Date;
	bh=ya3rhDxFbnHE4gkaHWEibaKVZIsz/DNHIuJRYqdfR/A=;
	b=OFCGUvuTL1vCQ2r/oow0ksJEyeM76Hp5lEzv52nonsHt0ZXErCRtXBLH6Ir+ERyT
	hr4b6CJTo3rWLlmiCLYL2eTVGOE3OaPRVhb9DNp3zPVVn+EdywXyPiA0gJKkuvJHRIt
	oOspmAbnkrIYYdDnYlMpYp4Wn9Ogbvl/kj8JPjhQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650497518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ya3rhDxFbnHE4gkaHWEibaKVZIsz/DNHIuJRYqdfR/A=;
	b=Te+3TRELTsOdQp2iSvBSr+Ic/9t4wRyQQG9eb++tMUyu/2SeqIc2HTGpp56pQBCD
	tSHOjyAs6PeVTvHbyRrRST/niKUdeVDdKEU9hLuD63hJvX+8Dmx6ESBZusekjCguEEp
	5jskOP1R58iTNJXy9wCdzqkQuNIjehBa0+l6zRcE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018049517ad6-215b8bfa-5b71-4774-8b08-97a4a3aa1250-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db15a268fef86053b4324da51af3215cde9335eb5639de9d3b4115d844672567
Date: Wed, 20 Apr 2022 23:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650497518
