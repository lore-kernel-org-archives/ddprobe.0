Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396CC38C0
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 22:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645050685;
	h=To:Subject:From:Message-Id:Date;
	bh=49spujCoItYYdaaAxvtd9d4/vMh8pvte7wYLZVWRVYE=;
	b=OgsFQrCGa2AMmyFhIUyXkokioEi60HQYyJ1hBQ7EWNC39/qNI4d14rujvLmIMAdz
	m8C76kk31g12UxJfGAVY2t+Q0MV7Dm6FNO95soMD+ZLo0qa8m13WqHIhl67WnDKQYdO
	h1mGSa+Ztzc5GmNGVt6CwcVM/hQ4nedN+0giPxLs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645050685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=49spujCoItYYdaaAxvtd9d4/vMh8pvte7wYLZVWRVYE=;
	b=j8E+XWaNxsU7gh/vgVq5UXr2nEhl5RFJjePH/1MZowtBmdwLUjBScf2O2ZjwdOwf
	lddCogsrZlDPenvgbIyAUzEi08Pl3cR00Qv0igHEqaxEjm+MMwUgBfTBLt4ZRyzuG1Z
	P+frIDs7W+tvaG6L1a6WcuSi5zD1Ad9AvmcYRNPw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f04a965b0-a5e071f2-105f-4cd1-a135-c3a85fef9f6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28571e21ea0b7c6281da75aaede1a5686057c82a09fd81aecd3a4ead83dbf624
Date: Wed, 16 Feb 2022 22:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645050684
