Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834F22F32
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 12:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645186885;
	h=To:Subject:From:Message-Id:Date;
	bh=TnmA2m01Trr7mvQQ8JaV+mCerL69I5DYv7G4tqOpquI=;
	b=VM8awdEXalEWRbFtH74/2RHmGQMmfZzHoqoN9vv6s64gPUvlk/N7uHFwuTPN/aKj
	ljFagAMYNX2CpjqVHGXkDMHWeUj9Gcfyvug8WxZvd53boXkcRE33lGKEsiqG2V4+Jsl
	vbCOPJqHDL0otHBsboUXzCwVvgzIHvBFxRwgE9C4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645186885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TnmA2m01Trr7mvQQ8JaV+mCerL69I5DYv7G4tqOpquI=;
	b=ezz5QykaQ06Yr2SHTdoTERCN6FZVIEJkRIBd+CbImSyI/6KJOewoPJWZMFlPl3mv
	jiyaM3qmfb7tjFSzO33MgtAwRTSciaBlxHzwYO2muYTLeK9jzPQP2wk8h55Az/y+Cfh
	FzabPYwq89l4GqUXfAO1/qx0w3V5oAfCnu1OO4s4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0cc7a4a2-601b979c-ebfc-48c4-8ffd-daee98865722-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce20db4d6491bf97809bfec5c3af7a85d49e538d5e24d70ac1045c0e6f22b9d5
Date: Fri, 18 Feb 2022 12:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645186884
