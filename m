Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03EFB33C1
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 22:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652911859;
	h=To:Subject:From:Message-Id:Date;
	bh=LhDgk5snoFaGTShjaajsySMNQM/m2oC8uMwvflkSz/k=;
	b=lQxRFmSPAVnXTw4pKHlHmGZY5MMqd6kiJoALrprffKcRuZ8zInYcWraAPFerRhu5
	UlcM9bjtWwK6qEVqYyGcfwCtxGC5m/AHyQqvN+T2WZIOejXHQVPOHXPBlw2JAy14MEk
	OG7+nfAo4siltFR5G0ZwTaDEmGrqdMYBmyjjeEks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652911859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LhDgk5snoFaGTShjaajsySMNQM/m2oC8uMwvflkSz/k=;
	b=DyUI4ErUITItPyBZ+NnnWcp1ODSAhPg4q2yga7ugp/DN8muQ+XsG1UQXVm4z1LLi
	xxZ7sN4LO25t9QL9/lU8i4oCgBKtNHt4k5SLXj/PVYo6fXc37W4lHGDu2RJ7yyceWMu
	0Y2+rfy6ivFAgNcG854FQLgGZm9Or6X5hIt2/EyI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d939663e-90b9168c-1a6e-4884-b4bd-492938ae5945-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4064bb603c1e52a23cc5b393fa61253cb5b1376817dd50c4144cf20cb6066b9e
Date: Wed, 18 May 2022 22:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652911859
