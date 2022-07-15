Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1178117C9
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 01:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657848412;
	h=To:Subject:From:Message-Id:Date;
	bh=ux/2khorq/DE+nmd38bqrzZ3sSUdnDiBk8RjIxZOtPE=;
	b=LmqRTzBYijGnQ0Mrge6R5s0SMf3QeBrwCTimZwaNEyKbToi/t/fsbzrrGDF+PAV0
	56ZNu628xXboaWKyx1rn70aQ2aaNY79SXx7sz/5biF0htZ8yFznEP5f8s6ZDXCg0iuj
	nYDTnHolOYfpOa0CKXzMKf14f2EUwmlpx4xAkBGk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657848412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ux/2khorq/DE+nmd38bqrzZ3sSUdnDiBk8RjIxZOtPE=;
	b=dLUdvlUijf6tl7jRt0jSxO4o2TLicT+oxumdY7SzK6Wok1O7wxJL3xia47iPwspu
	mY54Abj8NvPK5pyOAs8cWcHehQZOej7tUFSnmNKZMsiCPC+oo1hvuYxOoCjbvG572i2
	y7VfaOQ0siVsXkDpW1qga06M7QrANkWEO4+Wpavw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ff773885-b22a1d2c-6efc-4582-a47f-762d36501517-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 738bde30897fbf58312e1142bafc51e782217b1d3602f6957b34dbc256a74396
Date: Fri, 15 Jul 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657848412
