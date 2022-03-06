Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47351FB7
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 11:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646566885;
	h=To:Subject:From:Message-Id:Date;
	bh=cYZ4n++nMO9RCbvKNQFlfmc1AUTH8Fl1riZBg0OyEJw=;
	b=DWhvFIzz/KLJLvl8J7Tb8w/AhtzubJzQ3Q5AhNe1lpSirmf8ulBaElubY8cAQRpU
	EjmLM8d0HuqMhx/HH8mUehRWa/jaf8z8MFZZ+lJFtOuLgTCe3VEIZH+z+xmRuDCo4mg
	ZT3m4HU0B7qjk2/v+f9ZXfbHT6BAe/OoKKz9SavU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646566885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cYZ4n++nMO9RCbvKNQFlfmc1AUTH8Fl1riZBg0OyEJw=;
	b=HtI8WnNSVbcoZsTQGYwXriulPps3ev5DPjNYpvW1smcVbyBRfCdzgwLUjj6HQtG3
	nz9t5vm0MLeJvi9FSJ0Pl3GO+Rn34t9Fmti8IO68frLYtRqdg9c4fywZdgBWMnaEZ5P
	V2cLgOHw0HbqD1Wng6YJ2suf5138APm7jRbQSqLU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5f08c5a4-b4dc702a-82c1-4b63-9bc7-8203965b7364-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5109bc1d9a0e9aeccd7fe195638cdfa113271c60d0a2fb30e79568eeebfe7686
Date: Sun, 6 Mar 2022 11:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646566884
