Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00C3E7A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 01:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656208612;
	h=To:Subject:From:Message-Id:Date;
	bh=0QwKsCQZLjXl45CsoxsIOfKKOZvarbt/FukF08tzNAA=;
	b=PIuS3tp0AGK8q7+h3kCtUgqpTklmTqw8M8otUvzPfnJhJNAlR54VyNk6+gbeDyQg
	XuSYdoWwiFU12M+wOMb80vuO94tOxap+e4O+zPAPU6jsK7YCiYSyHucue4gbbMjcT6M
	qsJd1Og+bHxsVbXQ/+TgsmiY2V9xdY5q20bTfxiU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656208612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0QwKsCQZLjXl45CsoxsIOfKKOZvarbt/FukF08tzNAA=;
	b=U5eHl/UpRNPOzyU2FDi/DiJScEPYXFWgvj/1VCFVhUKU9q1QFa1YYMWV1Ly0oQSD
	DWC6mw/Sv09LJwboaltQQRnd8vmqoz0WDsg8X18Li7nUIIUPCodjMQJZVN0JBPF5Bta
	5mvQYyKcLuDe5mD+vWfMEz8qMFbdtXQGZi9nQrHE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819db9dba2-5bb4b732-2f5b-428b-8cce-e62a2f730da0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f26e5d5412003adb48769d5423841d4d3ba7fb9bc4c7fc176b3e0c614f20b505
Date: Sun, 26 Jun 2022 01:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656208612
