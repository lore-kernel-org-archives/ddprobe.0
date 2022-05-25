Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36480802
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 01:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653440939;
	h=To:Subject:From:Message-Id:Date;
	bh=4BLj5jSKYDHGxt4APgfyejolc08bvve2LIIuxljouVM=;
	b=TGiXJsZsy0W21pHbGlbuxqz2/sLCJRy18UYK0OGaIDAoeO1XnX6Tz2r6kpw7ljQX
	vkVZp4trgAk3ZuXQUN6l5mxQzagzR4WFce5GX7bLxeGGRsLEpAFXrA5hkwSj6WX8xK9
	Dqdm8a5huuAyPL0Ub7qzy9KLgQ311TDgkKI6ur/k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653440939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4BLj5jSKYDHGxt4APgfyejolc08bvve2LIIuxljouVM=;
	b=VG1iHI0VY+KyddWj0BMcePwp22YWoKb9THZbMPvi6OAWwZ8UnoGvQrlrFnuYnLfB
	XY9AYGoeK2sirN4rsofcZimrN38DCUDlucWvpnfTOjVnv1xeYr7yXAMwTKcsZHHs/th
	DRPvMXCl9o2a6zOXL1H7aTMLh0V4Yc9cCe656uP8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f8c28540-025753cb-f6b1-4e89-b2ae-06aa27e269e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 492d36e874cf7edbb3b7526d76b45969d45af7d1f9226ca93be56d79c84b7115
Date: Wed, 25 May 2022 01:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653440939
