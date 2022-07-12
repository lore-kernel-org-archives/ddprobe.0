Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1594723A9
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 05:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657605412;
	h=To:Subject:From:Message-Id:Date;
	bh=IsW0qC+juID3+U9yBPJMVQx6tr6VEJbqvsD1LbzNk2I=;
	b=BhXN/d87kgIJ0ammuMDhbPJ55cRRf5U7sTBc7Lt9TY9ezs8YWmyC+x73vivfyrip
	tUPe+17QlOgM24F/4MK/JWl/E+0ZMfqI52FHZvjFqrIjYa8EdDw3M0Ip5ghRr9mH84m
	gJEKd7Te217KOuedEZVcnn7/tSeNOn2ZvEL8yT4Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657605412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IsW0qC+juID3+U9yBPJMVQx6tr6VEJbqvsD1LbzNk2I=;
	b=kLM6ITlsoFD8P2QHgV6e1dfNOc0LWkip/uDLfYG06CRE1Cp/JmBjyJxPN1aUFr3P
	ygHQwM/z1sdSzdtPiRwwf/9x0xda5U4OezrOVbA85wwi7OxYAk6IoHmRfXKBndFyMun
	FQ4VZGPO7tUK3krq4aMTczCP12Y6yhflTcTYafZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f0fb55c1-3c72c36e-36e2-4073-8fa7-721eceaa691c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e926a15473dd46b3c53cacc391e01dc8736c2542ce786ce710f291f4c304075
Date: Tue, 12 Jul 2022 05:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657605412
