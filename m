Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B2923A0
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 03:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658372812;
	h=To:Subject:From:Message-Id:Date;
	bh=mus4jjEJC0+smTtyOV/vgoG36ddE/tKCgqxnH4wYKLI=;
	b=QARPBy+77epDkWk3xhofQLbCINN64Q+mNC99qzZH3nRa0L5+5GGtnK3NgrAE9CRF
	Oa0HM3GU4hMUKyWDpNwZsvo7ND9KtPycfYiwtKpRfeEjPRWFAqP3BL4tkNVKTAsBXd+
	9nkatxEWsheu90LEzeelBnoJbxd7/GnVS2fNjBGI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658372812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mus4jjEJC0+smTtyOV/vgoG36ddE/tKCgqxnH4wYKLI=;
	b=jWL/LHU4u0HS4kM+J7UsNjrckSq3tob29f639EzoZ76HqgMR0oyhD1tiLPdwYeCs
	EuSZx+TB+eq684onsWBKbKtpUODMVFs/2zNKdUJ6KGKJ/3GpYPxOpRxv6LIvh7NX+jU
	j5qeZHDhETuGCrJU3tYBb1NMMma+rFMulN2xYxL4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821eb8edd3-71e4ba75-1897-40b0-ac16-1923766ab516-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c510a453ab5822edfda59641ffffb5ad1425216911cb5556df0b2e2291d32e2f
Date: Thu, 21 Jul 2022 03:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658372812
