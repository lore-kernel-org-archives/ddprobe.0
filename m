Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6540E182
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660926652;
	h=To:Subject:From:Message-Id:Date;
	bh=uVmtyj4CsYgZ5AC7JNt4d3QpFyyNK6uYzNwb9Y+Q/AQ=;
	b=APW+mMxBdC2ivUVvrMcPrY++PnlKMNCKk/NReQwJ9lEJXNtsRafhIgm3msF5YwZj
	QFI7dCE1shMJjctfqwHi6jQIOg8NjY6cLXmecgK94GLNlwYSduMOP16mnqGkfUqWSTL
	P25A30f8ZU9V6a7QPPgRt/djTACOiYlZuKTzPfWA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660926652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uVmtyj4CsYgZ5AC7JNt4d3QpFyyNK6uYzNwb9Y+Q/AQ=;
	b=IDJwdHcwCI/zB8kls052MNV3cVVaYLha6oP+gEZ7Za94vtsPKUWcLL/ulFqdh5m9
	Jd70/HUAS7461q2SC7oKuKtFXupV/7B7XeJNRUCgpciM4BMoofwd1SYftLtcHXOAQ5C
	ys2rn5RTCTwHSXRybiCQvhyQ+Sm2H6up3PtA/57I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b6f170e1-e9e2c057-6bd4-4ad6-80d3-1fee28cad735-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94dc952f09093de852f509851e52aa0199fa312d46fd0ab56ea188690a4c7657
Date: Fri, 19 Aug 2022 16:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660926652
