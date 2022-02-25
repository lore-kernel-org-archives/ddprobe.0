Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54CA410EE
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 04:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645762284;
	h=To:Subject:From:Message-Id:Date;
	bh=ZBAJS4sjTCXC/ICVI8qM+Kstcoaz9H9wmBDGLF7fmEs=;
	b=XKWzG67ZOUa+XUaUb1nlTA/k1h8jpdeVY47GYsE7roo5yCio3HnTOhZDlV+iOWEn
	dMveTxJrtftir/QpeZmQWdnDZwLwue2Og04dflsMe8guvYMQ1uuxjvOJyus4abv1YrO
	nlcKb61NIdc3CBO7JJ5TMFjc5sidOnwZysjkIPrI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645762284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZBAJS4sjTCXC/ICVI8qM+Kstcoaz9H9wmBDGLF7fmEs=;
	b=aQKCC+Dxff/I3z4HNaH4Fi2oQhXfjr2018S52VaZEX2FfodB1vXHKb8n35+YckHS
	MrfT2vIpgNDA89SdllHAt5/miFMjDj57B9O/af/qpixFnFxLhIgnys4a4D3KKUrvqV3
	FhvHOyQ9je1UHRUPvqGAvzSnY3HF4WYJRsCvFUGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2f138ccc-ebe9dc0a-ba0d-462a-a19b-08a2d43a0e14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f65e4cd0db628945ffe508c2c7011035d4490b65189748192eb15dcf98e99d2
Date: Fri, 25 Feb 2022 04:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645762284
