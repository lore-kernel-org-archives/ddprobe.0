Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C96817
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 14:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658066812;
	h=To:Subject:From:Message-Id:Date;
	bh=MxQrUjrhMtEuoTcZHjM1u7ZXQwNPXVl9JMGbPK0OQOY=;
	b=F2gd3nEGMiuqKhZ5HEv/avFgBKVFmVGn72mQmDqGyrmaS9QjzFklE/7baRhXL9Bf
	0XE2EVAuFVMwsWsInkR6iCPuph/CXC+xxCv97GITrIQ5cgmaoC2yGFfAhHRe4LbGmbZ
	8UImZmB6I6Tjm2P+0+q7VTVatTxdk9H60iHFlXGU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658066812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MxQrUjrhMtEuoTcZHjM1u7ZXQwNPXVl9JMGbPK0OQOY=;
	b=R0EicERfragj6v/JpTSzbYuABaG3uZq5rRhh+DKj1SrmUTtffgz9qVdOgr4STE2D
	llrjOpFjn6V1RAnzDTz40neXgLsMgcjVt1Invy8/lnAXn64WQEm0zN1OkmVbciz9pgw
	IdZM5j0enut2Bb706nRRQM464FTayR9xWWqYivXA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820c7bbdab-b7685263-346d-4c0c-8194-d1a88598c9c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef66d34e6a6bb45a4f85e4fdeffb8651f299a81f22771e9589b98768dfb7b45c
Date: Sun, 17 Jul 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658066812
