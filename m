Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEFE136B
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 17:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651166338;
	h=To:Subject:From:Message-Id:Date;
	bh=X+5Bo88TKtfht5sk/ndkah4GluxYd1KpmSyXhp5wwyw=;
	b=ZZF4Picd5QLVBXkrUzaH5hZKw2+RKxDp0MzQzDQVw5EH2KOHrTthV3U1Hk/AKoEK
	IhTxfiY3Dfry+SeBTCOtR6zoCuIlNlz++BWbVvZRJuAmEhlTKHW4WxD32eaSjVTVnSZ
	QJ4hM+SZHgM7GcMmKIHHyopxc66hCeYuJbfhUayU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651166338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X+5Bo88TKtfht5sk/ndkah4GluxYd1KpmSyXhp5wwyw=;
	b=jwyY4vG1PSDFkvANCGlIXjqP/USW+npnh3wbrpLvXle2BYRXTHMwTOkwlYA8o0v+
	OWL3Uoed4RH8BPbi1l4jX4LrGrGf4mCIzZiWMVvX4xJPYqNh2jnDA6VDqAsWVO6XKU7
	amAZLp2C1JkcUs0RpMYT2nuazlOnIEhJX8sACMLM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180712edd0d-92cabf4d-02bf-4755-adbb-635764d7f402-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c80739cde5308caaa05defcd5d9da37ac198ca791a21b6341dca34fe0923241
Date: Thu, 28 Apr 2022 17:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651166338
