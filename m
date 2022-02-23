Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8057A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645603884;
	h=To:Subject:From:Message-Id:Date;
	bh=bswnCNnLpbqouvtsV0FQnD1BFmChX4tM1G1wlnrIG1M=;
	b=hflkPdyRXLSzs4C9Khv1VnRDPV/vg0raHUxA/fjA2Fb/mvHjivdwU1Z8gzct4iBx
	IjjxAnYkeM4Xi3TG3xO6WMY6kihuKH9ePcAj9NKdfSDciNwSOq3kaNPnjtmnhV7rYAp
	tmD5XNhN9skyxkc3zgQUPxTnG7BAfWdp1ErWjd2o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645603884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bswnCNnLpbqouvtsV0FQnD1BFmChX4tM1G1wlnrIG1M=;
	b=O4o6G7vbc3GQCMDOI1rE+OHS1/lZATwVS4O1kVjuZyfYh/HwzvLMYdBqc3jeoFh+
	3jmc2sMCWceE71JfPMDlNuxs/U1qhzLEWEgBTvY/zvSavCnJhEvnUtWgYGteKr1JY8b
	Ag45I30Q01amXCy7ldbVnTE224MgDgxramGi+fTM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f25a28ede-9ff75945-e36d-4cf0-88c7-f56e1ba1a29c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8934682867db8112702737f3d374383b2401f1eaede3f40cb38147724f7bc4fe
Date: Wed, 23 Feb 2022 08:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645603884
