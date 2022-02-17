Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1A3D38E2
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 00:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645059384;
	h=To:Subject:From:Message-Id:Date;
	bh=moZCi2+ZhACExYZ76nPmPQFJgLl36c6rlpXPUIrFhas=;
	b=Elh0NXNaBGidKIBjPk9fogMyttFkZqvErMMCFjW7kbMPnGI9iWMQM6sW7yRJlExc
	WZEQ9uHK37vcvtJWpj7q6L1zcLbVPkqh2RI0vv8fzDafjxBgcDDfSbtMJp2j0HR2ER6
	ssw0pUr5rqXk8scpaCtRUeoHEWy+PUtGDjMpIdGI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645059384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=moZCi2+ZhACExYZ76nPmPQFJgLl36c6rlpXPUIrFhas=;
	b=i/Xn5YQzDEDXB+P1gPYBXh1rjJZGmTX1MfHfyE5C/nRJCmy4Xdh/NGMSFommH5+U
	1mL1NaVZ/7GwIiqxb26s1u4Wc96u761lq/ZNM9Yg26GY8UEfLTmrU0npdspkt5isIse
	JDW6fOn+EGbKJzJUznulHCcnY+eQcdZsZIJ7SH7A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f052e25f1-c14b1f20-d73c-47f8-a641-c078222810e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8effccefa39dc248de4afdc6ba7c444dba75ac939ae4da3b27bf325551ad863a
Date: Thu, 17 Feb 2022 00:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645059384
