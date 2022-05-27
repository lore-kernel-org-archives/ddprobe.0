Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0819A4687
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 02:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653617759;
	h=To:Subject:From:Message-Id:Date;
	bh=HNrwfBYSbBWdIDB6ZMzRJbPdtsCk8NGPw9ZzCURuDyQ=;
	b=N3yYUPM/CqEO1ZrjFAear9QuAZ9GBT7YRqcOUtjmfY8viEza+adKyA2Qt18KbdOK
	7frNl/B8HXwRW2osyeBXrdJ6wlo4pg3P1nC+UW/bqXaGO60kbvkNRhSz4+zyC/8+K3Z
	2MXU5ASzkxvdk2NVGN0cn66Rgowqa25Vg3BqyQo8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653617759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HNrwfBYSbBWdIDB6ZMzRJbPdtsCk8NGPw9ZzCURuDyQ=;
	b=Efpf+s1kpHTdnCKPmMF+Vidgpgk6IigvgbF3EzjwR4EVVXRAPqqH7YOJzZlF678c
	wVFvJHlDPdDcCvGERZvBbyZG8pbxaxaXojarDig/b8XJHunsV4xNome4s16139AakKX
	JPTBrk1xQAj0TN3hYJYelX4sJ6kcssKnXqxShbvQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181034c9423-b4b20956-b652-4a61-b144-b79261d938ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d940604acc8c9e85e69134ca483ea98d1f5a2d19142356cabf407a48e516f0b9
Date: Fri, 27 May 2022 02:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653617759
