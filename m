Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4442902
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 22:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655333939;
	h=To:Subject:From:Message-Id:Date;
	bh=4H7momSx64WEVE/z+bh0ZJIl1cAb/cwRFELSwPNVsWs=;
	b=a5RdzQf42PKUqbTzv2h6OL3S5XbQ/2Vl0l3ywjXCpX0UbyU0O8fJgSQOsCicqqEf
	Lpra4sjl2goXwNFuXLoBH/hIhDw7BEh2z4t+Js1AZgbfDCEkPv4V8ebJdzPcvIVD7ij
	gGLszXfFZc+VqIlV18CM9RRDmeu3gWd1vkZveLo4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655333939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4H7momSx64WEVE/z+bh0ZJIl1cAb/cwRFELSwPNVsWs=;
	b=VlWly7hIUmZXygd6zB4Fzr+Z/WKI9m2TLXsLO1RiuRXo5DJTkfDCRM6COu5nzfaP
	x+/+L1V0lNbxX/dnnSnDuYlxIRFdpH3kWPu03KfG8OaZNB9F0YBGX8v/NNfZYUoBHdv
	l/Z2gTNT93NgqBVkyFagBaHED8lCiLfLo1+v9J28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018169976846-b0adc8ec-8549-4db1-ba41-fe3329c48d0e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a39c0a2dae9c60e6ccde9ab5276a3fa4d3057e42aae6ff3e46a460df153891e5
Date: Wed, 15 Jun 2022 22:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655333939
