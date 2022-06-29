Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BA47B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 22:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656542212;
	h=To:Subject:From:Message-Id:Date;
	bh=Y1j8hvBzrIJe0OwoAXZEHq5xQrQRg+CkKXaoe6eEWjo=;
	b=IdDb1OjTfhYxRvgmHwK7Wo+AFJ8nIL1ZcpGW0A3wYQHUKz80R/56UOcZ0C1cqPEK
	uJfsRcsfl4FkrfRyMgO/L+4/hFhDiHhCAkYD0bFeT9CVsWoW4a8bYlXg5ArvTiJ2i3G
	V71eTqGvxetfQslzM4RRnFPjwjQIUlspTdDhnK5o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656542212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y1j8hvBzrIJe0OwoAXZEHq5xQrQRg+CkKXaoe6eEWjo=;
	b=CkXbDiZOaqTXvxa9XFNW/r1YgI0bWVuzQLrDo0Kt16TaQ2TrERrs1XRZVt5O2IFH
	b/wud8t6MTrl5DGJWjupR5Sc0WYSxUi6JaFOGKD/Rgpl46EFN7Y7RIoL5PjH8KJ1dkn
	mIthy4dRwxcxG5X47+nPnjTQ+OF0vtnVKAwhtjco=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b19c30b9-384f2326-cd72-4446-b275-d5ca70a1e899-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39d284fd42f6bdf68a56b5c69c7cbef21413c85f76d1c6ca6f4ef64ad290d21d
Date: Wed, 29 Jun 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656542212
