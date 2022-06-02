Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F07FDA53
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 14:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654181759;
	h=To:Subject:From:Message-Id:Date;
	bh=ypj3MDoYKxuLXCRvoCAyRLjT8OQqq7n9IvL9mtGeadE=;
	b=GtSYFzPOgqJVeya5XwR0k/NfWB6LKgIPIHFHkfeRzw4KQ22sROA2MvLPMrpu7mL7
	gyyN+jxKbw6yTGhWtWJtAiYCKQp1vm0th/Z0ON69B369FBsW5CMZR3y2HlFkQ33re6S
	K0Ts/PQWLwu2++pnHD+HwrNb9//oeIvaBkskaUZ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654181759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ypj3MDoYKxuLXCRvoCAyRLjT8OQqq7n9IvL9mtGeadE=;
	b=Y+Ze1wZBFx9mwgK/5VcQFiQpo55iYogCgL02Rzkjan+9QUIaDITimz2PRBmFBMju
	1kqLwiDhjS7sqbV2m86lkJt8p/ESksn69MjvbqWca/3a3XdJRiCg5Rbkeo7zOX6J2j+
	gQ2mG9WTNuFEL1fxmkWEJN3pfc0UQmY5rdz6acM0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018124ea892c-35eea08b-296f-463d-aef5-ff8967b11d5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc22e35ad139709bd02acf93eb5d43931b1d93cbf9a1bff188e61d0f9d0e622d
Date: Thu, 2 Jun 2022 14:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654181759
