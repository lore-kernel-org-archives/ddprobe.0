Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC8E4293
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 18:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647972684;
	h=To:Subject:From:Message-Id:Date;
	bh=t2Tldqw0y5WCZIHfNdsHIMz00DDC5Vg3zOhnRY2aO6k=;
	b=bHtx6XbPFJNqY7crOoikbe055KYEVWbmmOPeXLxC0jgqd52DCxJPeP8MHQIHHR1x
	xUZLIp6OZt51pi5bTw+A2b4VZpJX/TuaiEnESxLHvDgVY6s6gKpCZA306cestaGmxag
	RkcUy6pB/S7+vTKqANFW3ayzHRSUjAVXcLo3sHQg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647972684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t2Tldqw0y5WCZIHfNdsHIMz00DDC5Vg3zOhnRY2aO6k=;
	b=gNYPY9DXHyRDuVTEAPgi2YrQSVW1S1Hn+Td+wsSnZZAxuPK5FS5YA7cYgQgkMTiJ
	/lYvXECZqIARlrh4RBc2aLoNT2XgqHLn8gTR8M1BB5tRqoJ793ABj+qfJOnsBl3qfHd
	/wUyA/YeSWvBM1HIoN7QW3ktwM4JQIR2oTOs2Yng=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb2d393e5-7e064bc3-3647-4a64-b7d0-5454d17ab71c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22e788401f1439fafbfad7b5196868b3a1304b199deec6bb30e0f0da6a909d92
Date: Tue, 22 Mar 2022 18:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647972684
