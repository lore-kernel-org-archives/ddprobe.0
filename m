Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1490D3234
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 23:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649980378;
	h=To:Subject:From:Message-Id:Date;
	bh=G1r/gClCMrOTdDWbWOQKa5xXHW+BSKHW+fwoz5rClMY=;
	b=YvZUMmXk2V1vyaK2HnCrzSbKq4TgL9LySG6bdPmvRKGbuCPluIRgvqVzdeSEqo7q
	LRhBcvy5fcCHfd8cjhh4oyz0TMfIoctcdkf3UDmUPkASvXNgIFxnyd9vIkevWcMyP68
	P1gvoLNEjXYfKi5K4xio3B3P5Ldvid5YdO1MfYE4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649980378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G1r/gClCMrOTdDWbWOQKa5xXHW+BSKHW+fwoz5rClMY=;
	b=Ccrnig0SncBKLopzGx9e9Fxjn+HFYRJhE22uaSkf12lAvP/g/nW77XKptiIQoFkz
	1ngfDrtfTnLkKBMsTvVbgUIz7xen9DOZxgdUwX1vZ8hESb8QKdPcUuoNU0Z1ddItehw
	lGGpaDqegvQWMSY2BZe0qmDtn5itc767HRh7QEfQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802a7e8c8f-a31c04df-23ba-4d6a-aab1-c919443ae295-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28ca00df8af8b74f89a08dea386e3f80bfcddb9250d8d2ba0413a95c67edb2cd
Date: Thu, 14 Apr 2022 23:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649980378
