Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E7BEA1
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 06:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650348958;
	h=To:Subject:From:Message-Id:Date;
	bh=uBXrjK0CNTLs7pxULOmkJODxc5B+xQimRNuAYQIvqUs=;
	b=EpEQlE7dKQP0AufBZKtN1Ua3qHji9YLAkLCMVgAlnRFjlaS77K2wsZLseyqzgj2q
	jEa7232vL9CeJ9P33dzP7CWm52rTQtD3BblqD+ujtTlEGPhF75awZfGg3G97ZAOXvHY
	Yf1LLK+LmNVrObBi3yARG7E7oL8Ez5O0HgjNyoDM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650348958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uBXrjK0CNTLs7pxULOmkJODxc5B+xQimRNuAYQIvqUs=;
	b=d5bt6Jy83fhZcnjWDbzmkmN5QGXrZUaFP/bVjvGyoYiGhI+0zb3A/G6P7AECeHNO
	CiigZNm7W+81bcmOZj5nsbtfuPUYr0DzH7g87n+qr5LJgg6HdVlLI3L1tScbh1SN8vc
	ppfGtZUBXooWjWmLY7Gty+nAVcQKTtr6omtqcM2A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804076a272-9f4a7de6-90a1-4d13-abcc-f9e61c4f01be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 95c70d52f5683c5a0700dafa9ca7fe32ef110e71fbc5ae15f91229463123afd4
Date: Tue, 19 Apr 2022 06:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650348958
