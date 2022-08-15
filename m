Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552E710F5
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660540252;
	h=To:Subject:From:Message-Id:Date;
	bh=2h7WI/9lMZ7km65PgVZrAu+SPAOIb3OoxG1A3zxYG0g=;
	b=fWJVJumumnp0TdXhbNBp553rjUv/IaYyaD8NtxBtuB1XpzZtGgfFnOIH2a+D6h+/
	V4vBRLg1hrP3dtEklEbdbHUnYD3mVTt1qpg03MFe5HZvOTRvf+5Ir2AmAD+DE32GSJz
	wvzVaclp9kTtATOCaR4qbw6KxPa+UVze7mZEfNyQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660540252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2h7WI/9lMZ7km65PgVZrAu+SPAOIb3OoxG1A3zxYG0g=;
	b=WYuXHgVa7dYmBh4BPNh/u0qxSxTtdI+/kwp3eWrQPMRKqcsB/y6Wn4F6Jns2+P7I
	wSvQKHT+p7ZTeNm93EC63803Hm27BjJjgP2KYW3oFLY4E89zDB/7UszVPANK0OorhiQ
	xijUU4Gcb5AT6e7I/lxHC7syVLBU+r16FLgo5lvk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829fe971c5-7c6b287b-eeef-40b6-b301-422798641c0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 050054fd300fd514d56b51d3866526d5afb6187414eb6f0e3358d149c8de9d6d
Date: Mon, 15 Aug 2022 05:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660540252
