Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFBC196
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 06:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653893759;
	h=To:Subject:From:Message-Id:Date;
	bh=yWbgDS4A/Dxolr3soWjWApZfSj96nzclkN/JnphpKhE=;
	b=X7tp3PhYi1YzaKzrnW+mHewqnS6ZdG93gNtf25ECifuPHqUZ8sShchQryyrjiu4i
	p0ZZav0sr7L+bI2UC5Wk/GhiD+6xviEmTfvTyx7WEm3iOTk6kyfalTBIZAlOOsbIOr/
	O6LOEpifDhqzwpW/2hnDbCZjO65dLbTBFqQYkJcg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653893759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yWbgDS4A/Dxolr3soWjWApZfSj96nzclkN/JnphpKhE=;
	b=YHDs8YBITlfJkK5BKagbYKMjMpbFC9Y7WgADx1pqApVEfiu4i5v0ss5NEDPKE9B2
	N3+tgsiAXiFXe3NWjq7BgTPqbpEiypzkccg+PhKrAdLGyduY7/hSIjzFf2kuwZ8O/69
	Y0Ypw/W52oLfZJ0YKPdAZ4vLPGxr7H0TekGlrTfU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018113c00118-ad4c0f91-3731-4473-b7c6-2325025153ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8de58adb7ad79cd04aeec7d7365add6554a837d63137562cf3319ab9eb2cfd9
Date: Mon, 30 May 2022 06:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653893759
