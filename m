Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B527A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 03:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656472012;
	h=To:Subject:From:Message-Id:Date;
	bh=at1MJLeZXTryPulWrDyU5GeHM8UiYXAzcc/p80zwVQk=;
	b=LqpcXyenutWpDUujujI4/XPx7vSaGEvtlx6PZUY+XB2VH1LeuBv5OmlvHNIJxtgD
	2fg4TrvFgahCw52TOhAI2WIR/Z+KDGgYew/GhQyboycs7YyHe9tlMgNdEvBELg+uZ4i
	JIBrbVWZMd/dhdc9GYA/P/Y/okDf0cJT58H4knro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656472012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=at1MJLeZXTryPulWrDyU5GeHM8UiYXAzcc/p80zwVQk=;
	b=NkaJNarkvudFz3QEX4+VuB20VlnzyUNpbIT7JEM4cr7voVtnj+zwSds/6vn9lr6D
	miz1RmrXq79qoNsFVqqdiyTTkUz766/LHZoDWZJKvHt/xFN5syBhE7a1OrYZXLNRH25
	2aaLeJNZwY9+/WIp/DgkZeVHQTbOZwW4+wjym4gQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ad6d062e-72e67736-16f0-403f-a7d3-99ff61d52bbc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba04a28dc930ba95fc3a3f2fae943845037fd30d4e5953454ffb56dbf839896c
Date: Wed, 29 Jun 2022 03:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656472012
