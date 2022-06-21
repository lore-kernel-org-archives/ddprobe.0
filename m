Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED885A20
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 04:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655784839;
	h=To:Subject:From:Message-Id:Date;
	bh=LkAbzjWOWCNuB7AZnD2SMeGoMgcCer/ZV0z7h6KlGSk=;
	b=U3PhcpincfrlWiXCB0rYDBV0aMDLr/fEWAIsI6SBrDmaM9ARbmytkHNq3zZLhIaV
	A5/k17buy9shpMVVS/bcwRxX8GEwXTlzbEAySj9NHmDFCzGZWXwNIxkH2MXcwLoB+d7
	NQ4Xe5er2aFae1SfQmo+GAZPSqm4h6M3dXpfQUgk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655784839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LkAbzjWOWCNuB7AZnD2SMeGoMgcCer/ZV0z7h6KlGSk=;
	b=MUSsp9iFGUCQlOv0Vs4WrebgJqQJiwfy1iT3+poPcH5ZyUE6ManWl89Auk8sGj7N
	m+r0XdlHKF8KyumG+ZRCVKwR1tZrP8vi2wf+hNty2BgqsLm5XhM7/Dwyw12WWt+L2wA
	9EAUEHLcDdQZdlV4pSMrrpirOF1XiJly4Ok/CZZc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018184779869-841f44a4-03b0-4825-a719-2de296c32597-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b66b0fc6a3e2858c52bd1531e5b44585fd31ba52997b679c20f57632c749feb6
Date: Tue, 21 Jun 2022 04:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655784839
