Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0433E2569
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 21:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656799012;
	h=To:Subject:From:Message-Id:Date;
	bh=F5p2Qe3Tpgk7JxxxIAeOsrnFB3fDyrAh4UEXjZXqxlk=;
	b=SWwjKYFz6VKdUdpYMZr7bjoiKaeC7smD7tSTb5vKsmxL2uRmapZrXYUGUo2LuzyR
	QPTjp5UqtNH8KVdq4i5bCzEVubY4AKoR3t3DtQxcghut954txqWTQL2yS4iOMU6Qb/M
	hmG0VhDPXiNTEKdJJGqGOipG5L7XX7TIkIYRrm0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656799012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F5p2Qe3Tpgk7JxxxIAeOsrnFB3fDyrAh4UEXjZXqxlk=;
	b=Jk3tq1OgI4tZ/sM8ZR5CLieug3MrmhJIBfmqe18/lBfkFSy/1A2Dt+aDOJW6UUlK
	kaweXKs/Gt8i37c7DSQFkpkkOrSCzJOnIKm1P1ebNilKKfZde+kZSSQ0gBfSa+vyRwO
	NL2D3dsrjlExh6XpU4hpP/S0vuUe6rD2Ssfb2/24=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c0eaa5e0-fad3561f-0b96-464c-94d1-56ba89cd6bb4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26788d00eb08e1ae8263d5a883fe5ce60cfd0a15c082c98b7540e907c4a51d18
Date: Sat, 2 Jul 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656799012
