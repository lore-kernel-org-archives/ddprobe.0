Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBDCEA3
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 18:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655836379;
	h=To:Subject:From:Message-Id:Date;
	bh=MwTDswq7qEHPKdP5ZaJfK/XyPVd05MpbsurS2P+7BzQ=;
	b=NNhRWc05lsl48L9CA7KU4L9E9jXOYz+Iy8TsSi0g7hxcru3oDXETJvS6geD+c5Wo
	ojtkk9SMqM71hDcVkyGql5AOPiaQ/NDLMzTxcHeS2V4ZrR/NVKDkNrqeOfyT0R2prgv
	EnPlmcJ8BkfDZaxBkMy3bGMZ54nAJdG012KE2kw4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655836379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MwTDswq7qEHPKdP5ZaJfK/XyPVd05MpbsurS2P+7BzQ=;
	b=GXQ/IRDCRtmilZyC5wKbIhciudpPv3NfUyjW90efz6xc1VjkLEAdErP1F2qJp9Tl
	GRGKWLG3dFcEHn+T9OxIrGmyBkC+d75kiWlUq+Naj0laErctnq+wGg0gc4CtjSuwua5
	TDXYSoVFKOPnTRm0++BPjNr9EqsicmI//t1saN3Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181878a08ab-959d6d2e-3ea2-44a1-aa3e-de9b7a79b368-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79aed05e408819d5f6166455a02999b7b4f3836c9117827776c23a9cd52e9eb2
Date: Tue, 21 Jun 2022 18:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655836379
