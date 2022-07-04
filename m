Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB3A14A18
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 22:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656973612;
	h=To:Subject:From:Message-Id:Date;
	bh=U39huGJVqUIBjqgJitz1JH+qxG+wCbUuHxAAtFkpz6Q=;
	b=CiCU/2Bkvd4N+gXmPUeW9y7ccNVyzITjXiZR7/jKg7az1220y8l0m/EfRDA4+2mj
	KG2Wwb/IFFz5VXkxBSx5Qcfra8d4EyQ+6akIGJXt82Wc2TrSK08XH2XVQEVp6fe0TH9
	/A4aOB38HlQsAxzdI2t5+K+xibheYhfZSxR/YMeE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656973612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U39huGJVqUIBjqgJitz1JH+qxG+wCbUuHxAAtFkpz6Q=;
	b=fqUjUvjb9Ct0MUSDibWRAVZ7C54DxEbLEcqLptDtPzdeG83Ucn5UqmWLGnkQvYrz
	4r+r9UdLoXhAhWsk5aYytBu/x/neThFU/8MIkkkzh18TCu9IDqvvhqY+1S9Ky2l1Ybs
	m2Awg82v6BPDCqSCbAq5e7Slp7Quq879IHe/n3S4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cb52d518-23cdc237-4310-46b8-9904-0e940fb149cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca5b54dacf0d251a3ee84ee58e8ce924aca51cc716ca064ca04803fbfdfc5eb8
Date: Mon, 4 Jul 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656973612
