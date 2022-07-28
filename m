Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 785537A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659027052;
	h=To:Subject:From:Message-Id:Date;
	bh=usdz0AWlHhw4KLApygkHHasETro3O4i2a+RIfVwoqR8=;
	b=i3yLYqvLaRUHWs4ccevGAEWet4okAwyafVdGZeiFz55gcs4wgXPb5hZ+9AG0pvoq
	JSKuqModJik49/nWKsCIW05mFc8J6R75BhGfZ3sU9Y0lt0yuYHdLygdSXf4Aad1urVx
	MNPtt/Qs8tOLOxyoaKFMJcmQTVVfmQ3QE3+uJwtg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659027052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=usdz0AWlHhw4KLApygkHHasETro3O4i2a+RIfVwoqR8=;
	b=fC4C0+W8WMVcjzvNB9rPszJ1tOwvG6ix2LXfSJkUh88q3hXtwdfzbISmT8OaSTn/
	R8c19JqC/lkXPoQZpXczccfdwP+i9XPRc2AKrn3QokOLhWqk7mN3XdpJaDI1jWiNBKY
	iZOFkMwRT9o7TdkUCy6+ND1fz+h0SsPSv7+Rte3k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018245b7d82d-fc7c4fbf-0f87-497e-a619-06b0ae5d0ab8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: adf8ebcff3f7bf681324baeb854289e60a9027bc27f2f96be20fc54dbcf59ba4
Date: Thu, 28 Jul 2022 16:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659027052
