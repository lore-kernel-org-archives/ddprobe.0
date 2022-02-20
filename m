Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E7817E
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 05:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645333584;
	h=To:Subject:From:Message-Id:Date;
	bh=Ibh+XG1YqyxpX2YGztwcKB1rsayy4eE1hW1hlWWBjuI=;
	b=SNK1Sp10dvSAvJ0Bh1xUf5rmJuYBczQDLQdyUFnQnhck3uKH/2MyuntxGleId+oi
	e0IQpd9dHeUXb/gUyWC+0pyHOsCKxtABClyApTQm2f7/CUQWNHnxLO+a/pTbtN+AXLq
	3pyPvCY4R11PGkYp6A/GtBIRmirLOCJrfAzDgNQg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645333584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ibh+XG1YqyxpX2YGztwcKB1rsayy4eE1hW1hlWWBjuI=;
	b=DgDyxgzFpODc+StqnmqM/KwYnM9FzZUe765ZW5lliyiSHUzwFxJ8qAA+96wQ2Vsy
	oAt7lhvUHldGeoViYIVk3iybzLCYGAEyS4sfVxhU2e4db0dWtZta2lcstaXoi6CkJ3V
	P7dw9rdCIHu8V5te7EBO7dB5E2DL5WkoIpeoTPUs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f15861b78-8ffeb5f8-d3bc-4d5d-acd6-ea7cd43851c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75298570ef3762eb1fc907d9192ddc8c9504ca47fb678b0fcef320ca2012d945
Date: Sun, 20 Feb 2022 05:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645333584
