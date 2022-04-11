Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF77A10EB
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 08:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649666398;
	h=To:Subject:From:Message-Id:Date;
	bh=anJUv/5y4Fspfe1Bz4m3oFZgU5mQde5/Kmbj8mZdkWg=;
	b=QhDq1EfTC9trJUEVOnWYFjq2mXpZoEovGSBfeIAFabEtLDgJBQBzlDeh/cupYvgf
	o375rlJlZWZvW94JjqzCU6z+fEJFXF/lllJwCB8QhTSTG5jxtzDrTsTJr1vYhDIFrWd
	ve36RIBX4mPHWMqIqbD1AR7876CacsJfilIdCmmE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649666398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=anJUv/5y4Fspfe1Bz4m3oFZgU5mQde5/Kmbj8mZdkWg=;
	b=f7NKTaTn8rP6G7wKFzNahVzECLfj5rFpbFhClwY880f05DB8QGFzMpGcHOMO3Vs9
	SuYOwTHRpQB29RIXwH7nFMNUac8+idceZD5JY86gwKnpC9W2IoYZOJbVG41bzx0CgJX
	uDLxtR8nNWXJBzgvO2X5eVV9PBcVB3DXcgTn0YL0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018017c7983a-6d9e6e83-8c72-4c7d-b93b-1b6084ee65c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7de3bdb6cf20edbd742955e5933a266f3ce7f642716f1e14274ceb4a69448449
Date: Mon, 11 Apr 2022 08:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649666398
