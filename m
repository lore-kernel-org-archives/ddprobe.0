Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD8D7F6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 09:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655718539;
	h=To:Subject:From:Message-Id:Date;
	bh=nroQtBkZ8Yic728UYscVm4pPXFdv595c/PnDrcmIe5o=;
	b=KEhk9OmnVV3xXstmCsSa5hyE8oagPLx7uaIUPuZrGr/PSfoPOZ9mawmFOkm3I9x6
	k211QOkBEQm72wcx2kvnohhQ/Ra1b+0jwejdG/0WzjQWr0HBTWulr745uSOlaG2fhbI
	+gnVY1DFuRWDS7eXjIDm3VU/db1qri+ttGjmAVao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655718539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nroQtBkZ8Yic728UYscVm4pPXFdv595c/PnDrcmIe5o=;
	b=RIGNTQ9H1srvIih9l/5kDjo3tLUYTlXDASkZFvuWmMsHPg8Mlnriw4qBC1Aw1BrL
	i61kxCoMLKFaPXvonR8DB+gfoO3K5odO0H0OwNe8bio5zWQroI5pOM9lmDKus7M9mOk
	EfynnVvmR9uPthAehky3mclDU0X80WsT/OOY7Jug=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818083f01d-d45b2708-2971-45f4-9b41-6947ca889dd1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a64c21902d4398e02bcfad1e8f7ce38e12f1d7ee8318790158b79e0acbfd989
Date: Mon, 20 Jun 2022 09:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655718539
