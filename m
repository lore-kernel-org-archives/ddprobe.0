Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F25A110E8
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 05:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656652612;
	h=To:Subject:From:Message-Id:Date;
	bh=+aW9EuBhGA9zcSzXFXI9gyyxOZnne7TFy8gyj6XQVMY=;
	b=HIxl8kMno0XWbLpG0aPdzmov1ZCH/v0q4XmA5Yb66uvGKw7Wb6UMhHEM+MjVOLMM
	nR9H9OxAae1UQowIFLfYkSERk/vSMxtr1OsvesGKYyQg71MHZ/Tu2Y54cQT9qqjhdKt
	+Ms6bICajlxev81/w2VUe+um9CDjZTtsoKs4z20M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656652612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+aW9EuBhGA9zcSzXFXI9gyyxOZnne7TFy8gyj6XQVMY=;
	b=kTrVJEruFDQLlpLeI1t8sV8g2xRiV1Z75a0otOyT5emgK/8y4poHQdd4PICU/9UD
	Of6+yhcec5gkr8mCayuvIF8qRYrg3D2woAZr8U63kbowL2g0cOTvM4msmJLIPAhYFgS
	fh/LrHm1XELzGWLSaGRBptwHFBn3Okw3I+DMIKYE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b830c2ee-d3038fd0-85f4-4ed4-bd16-d81991aa18e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 949d4c955a5ba79e4f70edf5b259ad774e3980ad5f66d47a1ae9b34e60f1f116
Date: Fri, 1 Jul 2022 05:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656652612
