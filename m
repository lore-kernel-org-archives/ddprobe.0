Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5F6F7A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658992853;
	h=To:Subject:From:Message-Id:Date;
	bh=kaI94Bw3wY3h4/oLRaLeNQ4m5RMBMHrpUI0nCRTYsXg=;
	b=Ybq3lbv9TqHemNdW1Ixrl/6X4WaTGf39/dTSpZx4VoX2WtU89SVm1bSrj2SfofBb
	fEE0N5APmHAl6Cve/62GLrs32GDjy/hP+7Ia9NWEpuinQ3A0Yjboej7unWKkV3KFFQR
	qvfEJfzE4CZhR/bas+74pzff/V2H7xDgFzwO3KAE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658992853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kaI94Bw3wY3h4/oLRaLeNQ4m5RMBMHrpUI0nCRTYsXg=;
	b=iRB+z7BTafM5ZtrdsL+rF25pM4wWwOzErPmAsW5wUlpXnq3cuNmJl2HBVDD+aboF
	+iwotvz8/bWgCmXmnUbBfcoKeqr2If8OsdzsqGJpWp3ZqCpyy7ifpnJNHSJX8B0i0IU
	SJ/WEKNY2iHPZsGppLXQmGgftY9zDlQzlH+0vxbg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018243adfe8c-3aead6dc-caf3-474a-8aad-1220102be007-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af5d7f17d13abca27da186727d073c53ed65e0ff82fb9b240e1aa2a547f57048
Date: Thu, 28 Jul 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658992852
