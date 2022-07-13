Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B7328E1
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 09:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657703812;
	h=To:Subject:From:Message-Id:Date;
	bh=J67O+1mUx8SaQVkM7zwDcA2dTcHUggNKvE6hpkOoJR4=;
	b=HzUFg5cN3pkjgz1ITI/3H6sJ/lq+f4oGbYv44qZmbUaMjzxEUbThKOldAak3UT9k
	lRYdAMMaxV55quexvNNPzEdp0hY0YW7dw2HzvP1zhefxAoiW7BX79b2Tc9SO2XftgZh
	Ag0Z15zL23ButuUZxkKajfFz224KQZeqF+FwbEX8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657703812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J67O+1mUx8SaQVkM7zwDcA2dTcHUggNKvE6hpkOoJR4=;
	b=alSWDMzFQtyyn2aoirgKWzTvqAcpw9jHHyUcfqed/2GJvVfFY6Woen8JiJjw1QPa
	z3AYrBTzQyStPTcUSKbeHSqqwavv0+12L9IYLOgMVCR/wBdXneN+Ad+TiRzz8SPU0CL
	BhtQCeo6tgDjC8ADBinuYCDPKl/sVCwdMgucSEJI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f6d8ccb1-f7dbe05c-c2b1-4d88-abc8-8ad4dbd2df32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed7153e1482aeb213693b8fbb41cc2a63f024505ff51e4ff8271b6a0d0cdba76
Date: Wed, 13 Jul 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657703812
