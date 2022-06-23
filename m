Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0352F28
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 20:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656014812;
	h=To:Subject:From:Message-Id:Date;
	bh=5iRFfNDCyHF1G2ZQuzYA/Tm+0+P6etnU8yKYDG3LInU=;
	b=Wl1h2XyYPXWF7rypYcX6OrSoMzoMDS9s9YL2o1uTB0C+y93ynRd7Ch/Rq9ayjrKV
	P+HHJrcjVQhP+DoYnlxQ28OpntJPBIkOGx8uXWlMJmOHKGCNKCVjUCoCc+pG56SikAK
	tdhuQK6EkQSeL0WodHxETX9FG4eODNoLGHlUz+Ow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656014812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5iRFfNDCyHF1G2ZQuzYA/Tm+0+P6etnU8yKYDG3LInU=;
	b=kkgZ6eV/cxVXiWgMgSoy3lX/+X7GRofE4BLckfDVo90Ev1gvv/xK7f0xd5hnlOS/
	8kV9nksxtLIfA9yKTCaEqVMqW5gfuipBvNjMWz8KRYPgVZ2jvAyy5LZsqQ/HAmwqGiE
	wRerGI0e9VVIZg+wlqeCLDfAWzC3AvIuF6Jv8LII=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181922cb49e-bbce8785-a703-4e6b-abb6-f0e38e75af51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2370f35a9a3729d0ba88fce87e75c56ce55bad9e8adf6bdc0610b35112ea6252
Date: Thu, 23 Jun 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656014812
