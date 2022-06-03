Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAB9CA5B
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 07:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654241580;
	h=To:Subject:From:Message-Id:Date;
	bh=Yyx4cv3m55K2id70/FqEIG1PkmnWZdoxl6L0y+9mzWs=;
	b=MYshlj/h5DDV65K+o7GtGK4RUYaCXSHrnfXGhv9Lu6MXD75V5oFa9j2PshPghS+X
	J4MxT6Y5JNLD0KacmuQ9iTEydzYlt2aZcQvG+hvrVbUOWdhoHrZwsJcDArbNIeiWEne
	81XvCQhSFghVYeRWU1p6lEOp+4xlng6zsW1eqFc0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654241580;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yyx4cv3m55K2id70/FqEIG1PkmnWZdoxl6L0y+9mzWs=;
	b=T5lEbC5UZzxgHPgOt6/cZKCyZ5GxQJS/wdxsK1aOTBpARMSZOmmTupiyOdF3uIWl
	i8S8N5KP3nxAk9uNTPAuQWjw8QKuP5fvFfCISkTJWRQHnN+b3onmY2ADFDRnckA2IZ3
	KTAYuqxyI7N4ko5vsI4MxkiWDFOHTHXELYyN7zVk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181287b50e1-afc69359-4579-49bd-bfdb-b14fbf432e6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 465b02a0d4eb98a6f6de206f7c1c4b9a89c9e52bc723856d2eada84d5973ea2b
Date: Fri, 3 Jun 2022 07:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654241579
