Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD2E73674
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 11:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646653884;
	h=To:Subject:From:Message-Id:Date;
	bh=06XJHHp6+dVVpDpaOqwg/2XPfKRUXoL+xeih98TK2Ow=;
	b=hVma8h3zfatUnR/jTC8ttyUcq1yGrNxEEEwewKysRe+j8WsWksy1mVhmyiunVDyQ
	9CsGK5Kjbh1OurKqfks40h2WpWtETuIWYtmyxPn8QR4E62yQBYIMs5qr7rDkHs2OagS
	g1fhNwe/7TFMmAhzikGyN6OZNpUCv7dldPamN2+M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646653884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=06XJHHp6+dVVpDpaOqwg/2XPfKRUXoL+xeih98TK2Ow=;
	b=Y8W0MwODyBwkgRhBGG+MXzU/NsBYKyzHj1MCqLxZOVpIYqhYtuys2/PKGmGtPiU7
	/opQriBppGqMZzRtjy7sP1gPN8jDmY2Sh/RKAP4WhIIsfF8Phdbkseg2duBjF0Bxtex
	b2+owtuJcsaCIelpU4yZGAVXtffnbSiIZpnqRFA4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f64384955-1402feb4-9d31-42ba-ab83-506c785c0222-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c21f99331d4c48e728b9b8560b7369e86d15f8249ae7559f5c1f617b5ca95d0
Date: Mon, 7 Mar 2022 11:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646653884
