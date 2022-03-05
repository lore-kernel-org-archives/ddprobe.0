Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCCB01B71
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 23:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646522185;
	h=To:Subject:From:Message-Id:Date;
	bh=edAvU4Q24P11v3Vymhif/npybIpYsLqX8C9ULjVt2e4=;
	b=bIt9NHSxcSzknIcyNycAx2h3K+KkhdLBI2OD3FAm8qB1mt6chTekVzTD3Y3KkjGl
	79tG4X6juUA6l/I/09MlJ7jijuyisRWykWR5bZNhlhuYqrJxendyNw7t+wfgU98clB4
	wzWEWkkcLE2de16zFiQnA4Oh+cKTWgQJRyr56NdM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646522185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=edAvU4Q24P11v3Vymhif/npybIpYsLqX8C9ULjVt2e4=;
	b=Mou+sXAgFS0KzWgymaPEQiMykzWa1zoAQWEOyxBvloBxT0dp5IUQGq9+y1+s9f0D
	xPieaAE+dVDRGnwdIb2NtBzPvahIHR2Lr/z3F6DMDdzGznDLXRCEL8ohq2ZXj3yWZHc
	WltnxhtZfkM2LwqrtC/VFEteVXFbHpq7uK5Y/0VE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5c5eb444-43891eab-9efd-47ad-8f6c-6a46e5c930cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e01e38f5a4ff831f4641f40dd79f6411d8e649cb225ab7ffd43a6d7d415f73ab
Date: Sat, 5 Mar 2022 23:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646522184
