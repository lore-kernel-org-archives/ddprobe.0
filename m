Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175687A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 01:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654909619;
	h=To:Subject:From:Message-Id:Date;
	bh=oFJdy9mNOD2SdSbE1WcbBJf1hx7OAaTsozMjJfF5yZA=;
	b=Ka7PesrTCReDMZSEggWUFGaiqP96RenOMge0/Xv+204OWH8c/mglrQuDYhEZNCIK
	vUxQmzl+dsAHDgVjEMddVYACJUlAPpRSvh2flSLIYN2BEhH4Rktsc2uo6I+Tp5fSMd0
	aMarcsYC7wM8wVoeP0Ktp0n/TlAH4nR9LwuduzYw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654909619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oFJdy9mNOD2SdSbE1WcbBJf1hx7OAaTsozMjJfF5yZA=;
	b=bEI8LX43uR75AIE/cewC9OIlTcps9UiexPCHGS7lbveBSzSjdG6eCIB2rZEo8af7
	tcQqIt8PWUzPiIsGvoeWjHip9AqHEIvIk1zcUVrib/o5iZVstiYrZr8skN1iU5U5k5D
	YIA6uMnp0yzUUFJttX2JuEW2ROb/KboTRJEhN6M4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181504ccc2a-136df607-42d0-42f5-8154-a39c32909a10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84ad3e2597ff6c7ff5955f9b0da4ddca15ef075ad45fd9ec7d2ea0a2a9a51762
Date: Sat, 11 Jun 2022 01:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654909619
