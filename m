Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFD67E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 23:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648337698;
	h=To:Subject:From:Message-Id:Date;
	bh=l8pLRc+X9ghH3JAViVO643iyI9JC2mbeFX4iJay7SJM=;
	b=TW2i5pTA8Ay0TEZkxuhnXthYdhZczOkmjjugNkgJtNGwh4cYKkSD5CJI9MJrP3WZ
	He7jmlbpNxZ0dUzpRj9He0l+vWAPsjxjSBhMMxk5XfRSpr81VTWzWovgmw4UtsKF8ym
	uxyYeVTirUzp50r7KJnWjQy+2t3f/pAgAcTYS2Ww=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648337698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l8pLRc+X9ghH3JAViVO643iyI9JC2mbeFX4iJay7SJM=;
	b=T9ImWywbRAbSK0QSdoGg96vPxT3ivRdcvM8IkkiPUr740RIjwm+ycSDjT8R6RK2L
	Nnl20VpMDEaaq9aef7tDhTwWumaXGp6LFQmo7S2kSTOnvXvcXu2ISgSS6YDCshZ+XjK
	qYIzpgcY+nbnB0E742N4IWl+/asv8+Umhwa9AYjU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc8953df6-bbbc42c0-b6d2-439b-8fcc-73a95c062d78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fdff80a785c9baefa30138ad88c9224a3eec1cb1987b02746b31c9f47c4cebad
Date: Sat, 26 Mar 2022 23:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648337698
