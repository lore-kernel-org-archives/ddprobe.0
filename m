Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFADE7A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 20:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650660358;
	h=To:Subject:From:Message-Id:Date;
	bh=rm3P0cr60ztXugGpkAsW6MrM3zPb4JDnkkBYJiMOLeE=;
	b=fHgZSiEHVmFzJK/8hDWwR4xCrxy9XgCANGQlNXjwQvHIyDe/mA2w/7cgYMemqA5P
	Ybc+FUkIb5m8A8I4Eap6ffVQMr9UGfhQhXJwajHzHlXmywcJr+S0ZNcq1Q2QzXm5BeU
	PE1dAmCueyUJGzlCPaSO5GccAGFbeSvWDxxihwaw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650660358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rm3P0cr60ztXugGpkAsW6MrM3zPb4JDnkkBYJiMOLeE=;
	b=L3ovssrdLcA+MNFWevJ9YzLMqJTKcIAbJnDqZ2nBH+vCkQPvN9u3u21eLt6bmeJ7
	Xd4MRniSQ1vDh7b9a22oxitvAnnWAA1tDBE04N75HvUeD/tLFdYh/+3R/eAVvVyywNZ
	Dse46k+Shvdqax4etq1j+0PYVTUPvABf1+ooXRdI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805306386e-ba1b111b-a89e-4b45-b2ab-f54d2859ac57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a8050227dc8427bfd9e8c2c9431a732b5d15a0f3928f4e4c26e49675a2ce623
Date: Fri, 22 Apr 2022 20:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650660358
