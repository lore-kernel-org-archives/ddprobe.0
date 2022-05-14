Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA066362
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 07:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652514659;
	h=To:Subject:From:Message-Id:Date;
	bh=z6bxQqWEIVrO4IuWlphJFHSKuJ+7eHQObsva1+69O3c=;
	b=eLY2J1Y5GGW3lcij940RaVYubgoec8W+cNYjrrTHQ3OpIgMDhQ01Fn8ueWwkmgLj
	Sc4MRcCrjhyBQfCMVfrWWE3Mxt1m7SPzGwUMBQy5ELbcg8uQRZF+/kU4Afb3DrX0PxS
	FwPC4/SDvR5xloqs4z5FI2t5DbD5wHNdpUmN1cRM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652514659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z6bxQqWEIVrO4IuWlphJFHSKuJ+7eHQObsva1+69O3c=;
	b=CJxz7lGoYtemb3UzNfMpTPKewIomSrD0oGCi9z+wkFHgOnpRlXKKA9QRNwVfo64d
	g2JS+UAeTqjPL/RvYMTnu+vlFalhvIbQ2pSBY8gueEbdSwJhDEE5SJrZyG06tqskpjP
	F5B1+gT3wkdAjzQZdYjVCle3r+VZI2sRl0MzKTZo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c18c9bb8-70d2b9a5-a555-4a9d-8ca9-a8133061f61d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d3e3ce19a656637c1f936bfdfc0b2831452ba197daa278a69ab8f2209371fff
Date: Sat, 14 May 2022 07:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652514659
