Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4772C23C2
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660028452;
	h=To:Subject:From:Message-Id:Date;
	bh=pcSFMbcajQjCsZLWPqW89eo+HCo/Shv+hIY52/ngAgc=;
	b=DnwP+n8QI15b0/6j1aMFLoyGss/p4DfJ/z7PAzpDyC8yfCvie4g9icuodCSP9Fft
	HTeHnmveCjtPvN4DHJtLpG8zpE8ZQiWGw2SiPi7XrhhWsugTnKEtVcVFKK+OhVakSPC
	kuZC/llvjdUD16CE7lmwz/3fVJm7yb/Yxvi1eR78=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660028452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pcSFMbcajQjCsZLWPqW89eo+HCo/Shv+hIY52/ngAgc=;
	b=ecPEyosONiDv3j6FZwVlOuLCnFRDMHQx+lYkeEOfcZgdl3dnXNp3sWkMZDLXHYX+
	UrImjSLxiBCmj+Jemg0pXvQeJN0pMttV2gkR+vsse1ZqBQnYo9s+M1RfAUWZsvdkedO
	3m2BgBPeEyQSvGT0FquMvfqTAzcdLSqc4UwFAOY4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828167feb0-c5e333b2-3fe8-46b0-9345-2397d599f388-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db862167c0f6f64a78eddbb3e518e2b7ccdd4727eb1de0767355e5ab0e639d2e
Date: Tue, 9 Aug 2022 07:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660028452
