Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101562574
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 22:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647036085;
	h=To:Subject:From:Message-Id:Date;
	bh=6MMxJuz5jUnVaatdxGRuRD2d/JtYewhRqqz7BKASm/E=;
	b=g3JQv+hiLyKSEAcS9YksI6ckNcpPhqTA6oyfMr9w1txgPZuYTSqHgPUp4rvWmTnG
	E/mnHe/1yHqd/HmENC9ZZ+KkEgMgq1Ac6r7J4A5Ni4CFKC794KH3t564dL4ifYMBG4H
	wLumcJIsrCS07Fpdckk/+/xtI9852Rtdvyg49eEA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647036085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6MMxJuz5jUnVaatdxGRuRD2d/JtYewhRqqz7BKASm/E=;
	b=RVDMleWlQNfnNbCJHtkjCvEWGG3DbCdgKt9SHc1b9DcZ/ez04Cr5pTw61wt14K5q
	H7Oi7ekjkeIqgEhmLsnSAWyvQap8KOTXUIkQf8FKbBRqYyK8Z8saE8uGBJgvCMP/yEP
	OTbB8xCyW1IuF875LTNsP7ljLf6sRV8g57PuOcOk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b00322a-1fff0d3d-f2d9-43f2-be4b-7ccd3852ca45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49f166cb9bea5d0cf4c6851e594cf37aa148f0ace4811d09a566e7325d2ed86e
Date: Fri, 11 Mar 2022 22:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647036084
