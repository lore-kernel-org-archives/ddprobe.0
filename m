Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECB9A7A
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 03:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650165718;
	h=To:Subject:From:Message-Id:Date;
	bh=VQA3DbpzBi5Ds1ELGS8Zk3tDvpTrLVz3ppU7ifS+vXg=;
	b=djYhJwL0BwW6nf++mO7i/uI0VZpo29PwfrbzCkXTcDheUPZ52+oOZMpQlLS/iiAM
	iNzT1BI0BUpCW68Ctt6o5R7uHt+O2sqTuaGc7ayNHcmgkiGFLj93QYAZ7JTbyXOa4qt
	AhOMyTXT+GvCv//Sp4ENQvewdn/nZozS7tFDpJ3I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650165718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VQA3DbpzBi5Ds1ELGS8Zk3tDvpTrLVz3ppU7ifS+vXg=;
	b=FuUSF5HWtQnUY/R7jQVkqkWEVvCeHxAEr0NlP39RiaLv3n90J3eTeDG3xYSFmWME
	D3EbWVPdBMkSGYJNcD6xtKOAC56dbGI73HTN27Cqcp5PSJvwH0snMfWWMXkomz9YxCf
	mPeTrUNaOZjcP+pacH0yZ3KcZsyJ1SuCjndjmYw8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180358a9cf7-017fbaef-58f2-45aa-8a89-7be9ddab2218-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e7d489204d693735f78b4ce5964ad9af38582029f30320435d7b2930020c1fe
Date: Sun, 17 Apr 2022 03:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650165718
