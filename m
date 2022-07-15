Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296AE3D76
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 17:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657904812;
	h=To:Subject:From:Message-Id:Date;
	bh=CaOODEtliLQNWBlAgqat+JD2GhqG8NFA2967eFhYDp4=;
	b=fGpGDqR6S/Di7j44zqFKmP+DQ4cpYHGFBuTpnfEsXpq5p1MEuLSwlpn6WzatPFs4
	QG84vD4nm0Cgn0qvafQFATYWedoPwQEBRz6+7BYRcQGvH2sOe30qSVElNqNiP2gxSD9
	2qwTp5P6z/dKC16SR0v7gWcgNu8lXTTDg/PZuv1s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657904812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CaOODEtliLQNWBlAgqat+JD2GhqG8NFA2967eFhYDp4=;
	b=i39gGjlTQmwspc6lpRxPhDOiRVXJOC5LV7mRKPbucQUUlcwUOgPBPmFNAqcSYv37
	Cv/xyXv1MIN0K3YFzCI4h5l7Dj8kskZMYY5/lRgvWaK+H9GnyqqMRrodiWtBL8HCO3K
	OhITBiIIwR3nMInrjBkvWUuqKshpzZGSmORfepaI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018202d3d1cd-8e0caa6b-7797-4226-acea-8ba2160b36e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e084049f86c319405b71a335c66057d25f306a821207fb793317f791eca5503
Date: Fri, 15 Jul 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657904812
