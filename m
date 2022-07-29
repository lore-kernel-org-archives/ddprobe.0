Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1F57A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659066652;
	h=To:Subject:From:Message-Id:Date;
	bh=eXcSMjmbpiTSG/zQdWpH+rQ55GYnbpNLHs7IIF0DKXM=;
	b=GmKtadzBVHNojyEYWv5fFNgo1QNESaSyigh+nAfUFRE2gzCawEyBxfYQiCCPOdnb
	KtITr/KLOYa7tLhMdaGB85CaXeUoGWXbcNcbG0+gspFzBuZLZZSAau+vqFinnEnAKEe
	XERrvvZLzqAo4XHphFXsPSMFzvocAYN6nG61Z1HU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659066652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eXcSMjmbpiTSG/zQdWpH+rQ55GYnbpNLHs7IIF0DKXM=;
	b=UJU0ztZcdewjfXCYzjuuzSPoocsJzhdocBz03N+CnvdB4Cf/8dqIqQiZR0ODbkBw
	8+Zba4pSqbFQridFO5Xl+G0cpeQPcqSUp2GLg9fHsl9GEWXrwiZ9eCxR0yu8IMtTwje
	GDLhu1E1SVJ3Cd65wZXnKggJiWpWVcE9UpGQgfF0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824814176d-6d837919-3106-4b42-9bb8-293c0c0d31ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98cf2d44cbf36f2032ae66c8353cbfc291016afc55c056e466862bf9c1e8fc83
Date: Fri, 29 Jul 2022 03:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659066652
