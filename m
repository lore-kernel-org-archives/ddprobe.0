Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC4A138F
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 15:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655826419;
	h=To:Subject:From:Message-Id:Date;
	bh=W81KeLjGoHIX4XTkyItCQmbdTt875kzf2eRiBckpIlQ=;
	b=MhktxzfLmhwdT3grflDcS58FW74HwXaW+XtLpkNNVIR0qosIxXV2omYa3tfo4CgP
	439ksmwynhesANrTxT/XaL0ETbNrLsWefJnJWPF1RYtlHi1MOJ3euOtuR/3KygQN1yT
	131H1xOHYBAf7wLU2BbQldd3UYzpRM//vOZkF/os=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655826419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W81KeLjGoHIX4XTkyItCQmbdTt875kzf2eRiBckpIlQ=;
	b=KgQTT+SXFozr83xhZrlBC0ZuDLCA+fzlQWpoQ/xzWrwVa0TWYp73kPumBNj3Rfam
	D9NbfD2VdhBOb/Jo9UDVxihtL2CJVncFQniiY6exG9XCSQsD4Ux1sQhp/xZJ0aDq0Qd
	x7potyVVtsdKoajtOeolE5sQeR2VXu/ceHIu0bnI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018186f20e45-357401de-213e-44e7-8b62-a42c83c2a458-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25414b09eaa9e3642bf7c69dc44230a243751bd150077d958e4098662d830908
Date: Tue, 21 Jun 2022 15:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655826419
