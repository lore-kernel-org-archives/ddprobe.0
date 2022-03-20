Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527002572
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 07:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647762684;
	h=To:Subject:From:Message-Id:Date;
	bh=pNBFuBuadEbBME2VqgnB0djDZUU7zoFQDGDOgQgTeHo=;
	b=FyyHIoGMbUynWYV4vIxyOIuDKoWkE56hrAQGfaKEctGYddbKATqaqOWnVdyV0dsw
	fFdx556CHeGwRgJBMfYhF6pqDjVVbB/Dkusch0zuopL/3TL5rw/0dtJwFlCLyevL12a
	B8aHlt29U3aN6mpI7YPTdibOcONwoKLp3GKVecuQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647762684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pNBFuBuadEbBME2VqgnB0djDZUU7zoFQDGDOgQgTeHo=;
	b=EoZ4jhvIeEmLF1QwgLh70i9GP57XnYdvoZ46649NklDsdMwUcuH1J4MEmQsYLMxk
	P6c7jimbwjaAElWkXJfBFOD95336uXZEGR8OUkr72VwW+956Ei1NUWMVYKVsii8iWos
	lg9suorX4A+vjSixv8G8pILIIgEiCkBiRt2R4RpQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa64f3b6b-15972ac7-77d0-4107-bf8c-cf4dad36adf5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: add346b50d6655b94dd7e0ac5fbe4ae1359005999a7a948187fa4c11068d6e21
Date: Sun, 20 Mar 2022 07:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647762684
