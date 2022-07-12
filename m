Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB821FA0
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 00:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657584412;
	h=To:Subject:From:Message-Id:Date;
	bh=7Ikp60VPUk3sBaWoUQeMIWoDJoEUfTdHu5/Z85CRZyE=;
	b=eOoJpsWCW2zOKae6hWSlO/uaQmjO4JZRWvhONiLKSX9DK3XpyH+783/owTxwCEnd
	OFm/zEaMD9lw0LulVJnXu9jBoSxuLAsRw7vWdXpS8L4aQJ3T4XguGmmpfY5HA2pJJLz
	C7DbseajXMSYGiFxz9/cvFYcJrAdiEesDfETbfo4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657584412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Ikp60VPUk3sBaWoUQeMIWoDJoEUfTdHu5/Z85CRZyE=;
	b=aTYS5PbH+EgOz8u5p9//KFkLh2ytQ5/Te3A1HDK9m5pCSFS44mo92FHUf+lH24I3
	hCHOkvEXFJBqD2risa0wyB0ujMAOKWj3bRZLcnQx5K5dVA8FYe7jTawp/EmnwyJbzb0
	rlZZSe07nXCGug0vlNqzsMRFHZOy3qLg1dTFgWdc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181efbae67a-709ce13e-3e62-40a3-abc8-b9244cc44d4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ecdda7b836f5d306e6309f0044583c852f8cf51003fafbd2998c0348948b9b33
Date: Tue, 12 Jul 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657584412
