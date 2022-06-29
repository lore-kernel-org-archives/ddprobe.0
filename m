Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F378A7B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 16:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656521812;
	h=To:Subject:From:Message-Id:Date;
	bh=fXym4eTb+pkfMCEq0PjJ6N5VcUGvq0qjvJvowM228Bg=;
	b=KZwrAewIsBvPu8ZDt9oBRjObZHoYZNan21ii8z+W7PMc9UXOgLIejDYTfMMvkokP
	ZcR/z11Y1yc4fxeUZ5kP/wi6R7UsiBtUhcIDNUKzP8x8Qw6bk7WFew0GFo5ROILD5GP
	9lfuuGN60NehFBq/jLGP4vFSJRIbzwUcmYJZ4E5c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656521812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fXym4eTb+pkfMCEq0PjJ6N5VcUGvq0qjvJvowM228Bg=;
	b=SxI9oZTv/2iBCcxVj//EutCoLm7W3QegzRMy9BVtbC9Czk4l2/wONrHS4K8wdWwq
	kv3SlPdQZDElrlq+sQuY/lYEZIBZsp3SR5TOXcAtucICmjtZlkACujs79Heun2eSltJ
	DO1SS6aXDcrntBHUG2gFaBd5ZVyZKV/0UrtI1xe0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b064e961-3c116a92-457d-4d1f-a563-a8721b93e2aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2b1467ed889a0213d8ab365b65fe9385fde1cf36aae9d2152a8f01d50b45a2c
Date: Wed, 29 Jun 2022 16:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656521812
