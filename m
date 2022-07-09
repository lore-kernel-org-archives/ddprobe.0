Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F28ED8
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 13:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657373812;
	h=To:Subject:From:Message-Id:Date;
	bh=WtbzQSqlUKAjjp2AucPOUtm3BFde8eGNZ+ZPPoWR/y8=;
	b=ctyHMwdVQvWdiIPQFWuCBKCsU9/0G9piGSl+DQSjc5q1N0yrnksRd1hBd52XnK++
	/4tcC2XXa74sIJGBzC8T4qrRt1ldspTJAwpiQnyc1xr5E0SeGqldYyII7D8Q8hgijG1
	Gl74m6U7LaB+iF+x7QuiEdkZvH4vUXJL8N3cwAE4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657373812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WtbzQSqlUKAjjp2AucPOUtm3BFde8eGNZ+ZPPoWR/y8=;
	b=DqI8Aulxcb9pxJ4oN2hwOhZ61jxSlso81CcjjycoRYjYXBar/xHdLj7iUlud2Qov
	nyXBAiLvbM86mKGCtb5OIuwukKzU6Qk7fSE6bZgCDxfjLnPTOEdankrsptcM83oCe/S
	DyDQjjyxGdmkq8kZDva0XU3+dGX87akFO3QaYzRk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e32d663f-144af9d0-ef92-4fa0-817e-07081c71e5c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 779fdb74896082e8eac52e5c9a88b9567b6e5ce0fdb2101eb7988f21fed273d7
Date: Sat, 9 Jul 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657373812
