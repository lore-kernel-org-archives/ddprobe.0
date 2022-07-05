Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1D22917
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 20:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657052812;
	h=To:Subject:From:Message-Id:Date;
	bh=Vp7rhZ8pVg8Lvi7GJIRQk0L+0abFdw5Xfa2dYvjAA5o=;
	b=A6yiFZeJdxh/YVdxHQC66N21wPGOz69D4B+HpZ7TdkNoe63QSlapj6vX9g2wpgKA
	lqgjWfUE3vt+4p8iRtzYNq6yuSWy/G4K+GOhqIxMaHi5nAzYUVCtiZdkKWbSXWuX6ys
	iJEA3hcmjl/FZwJl6zW3+XK5lBLUIR/+4zaPL/eI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657052812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vp7rhZ8pVg8Lvi7GJIRQk0L+0abFdw5Xfa2dYvjAA5o=;
	b=PSRX7I4Xlx8l80lg1jwr9qNZM4YX753iH2z2gcJpRg+fSZ52egqpComhOTpgD8tJ
	JtZQwtO/ukT33HEhMnpyFYasxzpS/Dazr3KiKw4OWF7QvkuajlJju9nEBjYSHkj9S68
	2pTThJoNDwf6US2DTo+8Bnc1l1s/kMe2TC8vL0R0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d00b5468-7240d9ce-83a7-4594-8eeb-98661fe90280-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d650b66b5d7bbe209a7e657ab1b66085e66b9465174874217598de8a35e7ee6f
Date: Tue, 5 Jul 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657052812
