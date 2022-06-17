Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB212F25
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 10:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655463359;
	h=To:Subject:From:Message-Id:Date;
	bh=sUvpRKD4lOLCjPEfqCvYS5PohuE84A6S32W5fc9Af5k=;
	b=N/+r9V4UupLBtqg9juHR9ix+IAAtIisQqnofsp1PbMzFK31PEHO0Qra6i+iHi5eu
	1+T2Tu51c0uZ+w31wGxfckAgD/5O4ZnCSBDXceSKWNGlTIMPeKaUj/gN9pTd77dcrXo
	S4u4J+2uSB5cSVhc43EsuZw0ce/G1Rs2bfDnSaB0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655463359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sUvpRKD4lOLCjPEfqCvYS5PohuE84A6S32W5fc9Af5k=;
	b=Mjj4oqPwKR+In/rWIu+6Nez4tW3VgNzPKbqKNWgWc3LkwjH8WR1U1zreP8fOeyRM
	p6kp0jGioWF7j0mel2RG8Z5GIgAT/OQRJZxjt0YMdwqPo9AMe9/0s3rBfbQHgdwGzTz
	PfPQNa1YhQPL/HNGUvh04CP/HJVzEaNHPyERBJkc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181714e32fd-86c9c173-03bc-4a95-bb30-82a0d1b37c37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca0c9f98f5b39a3167c1acc3edb2da1c2582b35cc45032042af5897180bd7c19
Date: Fri, 17 Jun 2022 10:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655463359
