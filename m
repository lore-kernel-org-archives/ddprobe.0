Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E253FDF
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 19:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656098212;
	h=To:Subject:From:Message-Id:Date;
	bh=bYj9X1gOir2dBIiO17b+odnRsO2z9R7F2Y6UVthhrrE=;
	b=TzwY39zOkYVmOOgzGWRH+Zr39BLvMosLpXVIfhZxMLzZQAF1idK7px6Ej/JupoiV
	1GtEZeSDKkaPXAnmpkgZDkFTbR7t8UVq4nN++oxJ1U3zk3zh7oVqZeN/JORYwpMC4CF
	eKUNOiNeD05brS0oTkArutDSgMXC3ialeJp6eZ7U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656098212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bYj9X1gOir2dBIiO17b+odnRsO2z9R7F2Y6UVthhrrE=;
	b=kEaF6a9C9/3/XusDvo2cx1UEtd9aoMRK3h59da4EfjRchxV1z9yChG6vhfbaQwUS
	ZxKUhIEeGroELpXk+sUiboaMAmOt7DJbbZ7d1HViCsKJSI+FpSRQvZRQegYEFiBgbrw
	aCaKQjD0LcixTApWYQhybSya4qUVsVmdGOzI9fZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181972549ce-3785d078-bb33-4b3f-97ab-9dfd7113b9fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1533ae7a9d21aff55eaf6b6240070990e637edcc8b475c2dcb11f85a6683837d
Date: Fri, 24 Jun 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656098212
