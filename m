Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C9C1101
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659000652;
	h=To:Subject:From:Message-Id:Date;
	bh=LZpelAx3i6XIhzGY30bNobmr7DyLHoRVA9OMNvUQ+NU=;
	b=O62Dw5exPRj2GEtIPG5YIG3yFXDTYfhWWiQwycwPuinzxtBbT0Bf/GQLhdLhliot
	tyiKscnWwUoDoq7FHBJQjwGsetW8bglqjJajcBX07rvm0zWb4PUgwctMPZthLpeoB9b
	BEBB1j/vsm8I6k5VEtQTEvffqS8M7HKIY0X0JGEM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659000652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LZpelAx3i6XIhzGY30bNobmr7DyLHoRVA9OMNvUQ+NU=;
	b=M1EwfKiur14JQRELTKMjDEL8Yfav16AOCVEG8XGpUB4Q6C0ZfnztjR96G6icAdOW
	ZM1yhs6uIx7xz2d9mAhiSOIqW9T5x+en1rw5brZ+NfCUTxcvUTZnT4bqrf3hc22S5mo
	J0ZC3nIcvM/g4JAolAwuRr74aLqTdhrl8ThoZN8s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182442502ed-c1e86abf-e192-4ee3-bdcc-774c994f41c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c32479f5f48af172688116810d49fb7f301a56124144b714b1902c5e9ed525f3
Date: Thu, 28 Jul 2022 09:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659000652
