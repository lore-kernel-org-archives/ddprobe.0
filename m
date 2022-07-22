Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D48F15A2
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 07:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658476012;
	h=To:Subject:From:Message-Id:Date;
	bh=nNkCgGJxtx/WMNepEIQABvv+vML07K05UMDO+HGdgXw=;
	b=ChkvQQHZcd4wG49ZTI32lM/s/ppw7j789GgWRqHi/Wo9kptyecH4wk9zgBuqwW9r
	Lk9EhzQxDDGUrbOd16CyLfuJdriOoVkcs5NnFooceZFM74UASJVr8mEBJuaMvlQljVR
	CCLDtMnBq5muhSPSPhI6WltvZkkBgphtV5dhFxPU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658476012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nNkCgGJxtx/WMNepEIQABvv+vML07K05UMDO+HGdgXw=;
	b=IgRTHf7RyQfCSv1jTXyZpf/cGMCFZ4dQ2Sq3b8HNVio9Ib8WFfQALMBrrRQhSrB0
	hExRTV2LTKNcnsoMlwlPYqF9MKZ+oYef8v5+KbSt3Lo5xrncQCq4SZFEDc+yAk8IKov
	luSFvjWAHE7f9KLazkVQ8/EjW3K+rrxsSBdQs3YI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018224dfa2e4-e03e46ec-20bb-4535-802a-e92731f664f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75f88eae8f363c3575329b34e2c889c42521a61132d4ed20a723d1834f9af398
Date: Fri, 22 Jul 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658476012
