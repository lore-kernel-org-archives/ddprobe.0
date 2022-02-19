Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DFB511F
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 07:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645254384;
	h=To:Subject:From:Message-Id:Date;
	bh=WfhzCsQpt1kRYVtml+Fx441VRjMODil5IkLKEXXbI8w=;
	b=i9OhC2RU7AV/QP7n1IDXx/PPvV23LJyGle0iZpwLADOBSohfB7QlHVhe9ECF+UIq
	oWEgsANdg0TVkO1Tj1JyM0kVjp95ciqrTviqfLnbQSxvTpAnakW/NGb72iM1bSkZkKA
	tHrr3E6EhK/yvAN2xCak6900jfG0pX/g+XQEv+/o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645254384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WfhzCsQpt1kRYVtml+Fx441VRjMODil5IkLKEXXbI8w=;
	b=K3DTpVDwaxjz5s2fmp9SDRU6DBzTCnHjflbEUUxoaRGjfWkn9ne2K//qDJETnV5f
	ZZzvmQiyLX6ATF8RiSpvj9MhIgqwymUd0mFOLvXs91oIQBJ2yd5tZE27QzuvCDsZhdw
	kjzzgTN2M0S2cSTR0E75zkJ26DCLDpxiERJ1btQ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f10cd9c3f-2ea29e7d-afc5-45e6-9d10-c756f56ab367-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bff7e66f8b42e5cd8655276705402287fcc9d8648435f155adf103ed40ad8921
Date: Sat, 19 Feb 2022 07:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645254384
