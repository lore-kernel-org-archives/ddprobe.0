Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD08E7EE
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660441853;
	h=To:Subject:From:Message-Id:Date;
	bh=9sDj8v+Ilm+vdBrRkKy4DP+CzY1rAhkTpUR+wpeHRMA=;
	b=WIbr0YO1pkMcdZ42PhWHk2tqPAucTU0+ewb+glqahdWsGkGY7Mxk4f67QMaD8xao
	YEX8To4kNvkzM6EP5CQt57P6C8H103fqv1u1KZmw+omapbS68rIUl8X0sqYtAt+8MOG
	W5IqA+p1fgIezqm1yTAduNzTp7a62yxo3/GgElAg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660441853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9sDj8v+Ilm+vdBrRkKy4DP+CzY1rAhkTpUR+wpeHRMA=;
	b=Z0LEmxzNjh053rLth9gOs876mrFe+8N4DMtFF0sJV6AHMaha90F+1ODl0n0tTSEx
	/qOVTrPC3zBmHDrcLg8rgoHgIXNeLRaW27cpFS2cI0e9j3pNeI5dB0//Pj+1Xc7lKUS
	u7aRvmAZJY6jnWJhfgP3oBUVHTHhfceEhwxFGWo8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829a0bfaac-8ebbcd42-38ea-4157-b00f-4d02d12d1ec8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4656fffada34e42a7f8c6626a4684f52e7a60e825a36b86fc76ffa06ce3b6cb1
Date: Sun, 14 Aug 2022 01:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660441852
