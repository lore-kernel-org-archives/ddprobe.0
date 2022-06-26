Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06001198
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 06:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656226012;
	h=To:Subject:From:Message-Id:Date;
	bh=7yRhr/fQcTnImnHOWe5FisUm5h3OLdA72NKDLhCdaeY=;
	b=c/iyukwSQsqWGd6AUIRSvlGu9TGkLpRLCEejfL/edNS/zmlfjlZZZwQ1u2MC6ZL1
	wvQrxD7Ec4n5th5T7cdvSGoeZZhwPFLRKh62jC3Wi84vbMFBamyavr0sQwRQG5oIO9f
	O5oFtnULsRUBfQ96JzWgoT/eEKyP1Nk1MKrWdgWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656226012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7yRhr/fQcTnImnHOWe5FisUm5h3OLdA72NKDLhCdaeY=;
	b=EfGbQh3ZXQtdpw01XmG6tN3GCUuKlRr/i0EwGlKc9um7nXfKJ7XfZUEVfvm2nlcK
	HDA0/Eqznwj83+HJYNgSSliFg1PR5CR+QxZeS6RnjuWImLh1kuCAGdqByrHDuFkhRej
	O0km9l9fu8ah2+1lKgaXa6P6yoHiCgZlOB4PEc6s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819ec35ca7-60a9b397-64c4-42b2-91bb-e3c72151088c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15041ad487424f14202e0e743d30dd28a7f53ed3c5925ac4592cc2bbbd7d9874
Date: Sun, 26 Jun 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656226012
