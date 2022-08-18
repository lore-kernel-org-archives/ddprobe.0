Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 913344A07
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660860053;
	h=To:Subject:From:Message-Id:Date;
	bh=3dXayenjtjWS8U9iQHKNfL1bRPPPEaFR7K5LAJrOa2M=;
	b=leDTauckZ0etLbvGu3A5WeV5vRiujB6GfiUw6PtJNkqfDX2mlPeqzx11KnkqadJj
	FNc8LYigeFD1rKOGwTnKasf0QvjBBEUajqw08CW9K7DObImWBPAwbyYC960ZGs+lwoR
	+6lStSRxVbYI8HgVwEAnwNinrSGNoPrETYL+KCSw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660860053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3dXayenjtjWS8U9iQHKNfL1bRPPPEaFR7K5LAJrOa2M=;
	b=HA9NOSb3TLIVaNRy4qtMZVw+bj/IgVASBs4N8v+8gXpKySh0EMS3R4PG4Zb0Ql48
	TAylhelSo4xondwnxM/vjq3scAJwakYWM5gIofjlIcdfvcIFi9Cl9VlSodnOeOEQWla
	o6hnVVX0EywALrUMITdQmm0qAkMZjQcC5mlpPy7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b2f9344f-4db20160-41ba-4049-8bb6-5a5fb3931a7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53f356b81ace22c3809284e1907859a6c17d097a3ab3b8f40073eb8115b86b21
Date: Thu, 18 Aug 2022 22:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660860052
