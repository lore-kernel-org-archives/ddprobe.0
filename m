Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A93A28E4
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 05:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645077384;
	h=To:Subject:From:Message-Id:Date;
	bh=ydaQJKNu+seT2gHH0qu5JUhN38R+pIOC6HDMN0Gu/R8=;
	b=DPsK2PUNg6n0QQPwG3fIxvSlJ5DW2ji4DU4M4xwh9kV596D6n7rAMnyxPigrN5Xl
	WYIgFHCZ+tnyo6mGOgdiUTnoS91Zx8eRN0XRi7zUgRZKZOxlQjv1ww+qwivjlueGTAm
	3m5AtTt+6daPcZmc3w32cU8N4WR/5UNKwIqGVpik=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645077384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ydaQJKNu+seT2gHH0qu5JUhN38R+pIOC6HDMN0Gu/R8=;
	b=Du//br4n2NpJp/OeBlVI2ew0UhabNkq5T/xL7h+XlECpaEhO/4FC/I66kt/CzJ5j
	T42o2xKg/jN5dNY2Ya+XCNs38DYTItD23D7wfCCKhU51QUE31Z6TCsy/9KfKvUAkkeI
	YoAdYtYB8PVj09pkwEX9I4qoFotp0hjoD/5cPLXU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0640ce2b-fae7670b-e1cd-4db3-876c-b3bcb0483aef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41d08b2a4ac04084c650dcf546e77276737c3fe4eb5f2f7daea3f3bc688695e3
Date: Thu, 17 Feb 2022 05:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645077384
