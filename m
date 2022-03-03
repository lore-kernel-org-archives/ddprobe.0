Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 877C1368
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646303785;
	h=To:Subject:From:Message-Id:Date;
	bh=67BoY5Rtz1C7vbPxVKrPBxd93CNjM7k3jOw3imc7NHo=;
	b=QOsRaQ1U3V2OnIpIrc4rhTBK4fghAuXtKncaqe6Vw4MPpak71T+O3Sqo33CMHYdp
	AC4whanhHFzYYaKCiFh02yG6mRRQ7YjGkyDiM9oeC+UgXYPyGw2EoRt4cl22oxZau/P
	HrytFnlO7geUgow+j7exdX8hESxmODAO2ZYTOq9k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646303784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=67BoY5Rtz1C7vbPxVKrPBxd93CNjM7k3jOw3imc7NHo=;
	b=NdezQt+UxkjbNIMH3RM3UQ0JmVL3gxo2PXGu6ruDAyoFxlO0WEug5oJw+yKOjTjx
	mxJdxXAJpBclb7FoxWmM+YamJF+qvO3eD2gVOJuJkzDk7YUGNd2tzQEKHoJ3cRy/kAx
	xMDbECUppKBqf5tgTM9NWVo2bkwiU2j5PO92jO4E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4f5a2f8e-5c3bf7ef-e2c5-417d-a90a-7638240c8ff1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 569d7b4d65958340614764c467a6506b13b0d0bdde332f7506d3a564b66ff018
Date: Thu, 3 Mar 2022 10:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646303784
