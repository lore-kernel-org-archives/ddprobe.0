Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D503D70
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 22:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648332838;
	h=To:Subject:From:Message-Id:Date;
	bh=Q0k82/telAf1lHmn+vsDODGN20Pj/hkf4t5jtfEer1E=;
	b=ivE2yG4KxHwVfjvg+rPUXrl3Ce5L/PSIkxONaV73nQIAGZd9qyvzqahVfzH2bk00
	YCmMipgK+z4S/nBWmUKG/kG+TaZx/sY8mUh5coHNP525ksKOk7lg9VlZBVMkL+YpnU3
	f6Cl6Ck+Yw8DjH4b8sdwsKxTqTPCEiHeTyKQA3MI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648332838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q0k82/telAf1lHmn+vsDODGN20Pj/hkf4t5jtfEer1E=;
	b=bM9IMtkqpxvvuBYGUsicIAFhhquEaa0Vkhlt5qEPo9j1uDAVCjLjDvsXseVrC1Gz
	xm6dxNj7SBH68f224dYqcJ0XSG3fx8a9qsNXkFfTbe1TgYpx0TX7WFjsKHPw3iNsQi7
	Y4bNuHpg1oKFPbLQcYmACpTE/CLzid+yoPXs900w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc84b159a-00cc59f5-49de-40c6-82c3-2e77bc4a7b6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c5c755d0f564ff0f1cc2f1da9d0c88e2325927d4813881b75eb0cb3d9c88ebe
Date: Sat, 26 Mar 2022 22:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648332838
