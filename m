Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A150F7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 12:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646916084;
	h=To:Subject:From:Message-Id:Date;
	bh=OKNz1+WebJTT91Xpi9QblAES5YZsKQmEYudT2TUNE0A=;
	b=MhLvX+i+VV7MS4we9SmEQi9yTkVYV8lsl+LN8CiCodoDfsETpXo/xWpxXonS9MOJ
	0SdLZimkfn0aBkG75vvN+FRct+lcic9wMA1yzMGrj5XkP1UadaIQQpTdUAKmiKcvIow
	XMfVI7ERSY4ukfcu2hCFFCRzmqzAVu6poLGAnFRo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646916084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OKNz1+WebJTT91Xpi9QblAES5YZsKQmEYudT2TUNE0A=;
	b=iLX+znXJiXzTchPVFxAxMXz5EbeJzNsLMoD9KcLZUiHryHY5DXUjzM13TruO0mKo
	/S4dNy3sQhDkt25iJRzGNkX4bUm3Q1ZjGZbbnnJRGo8Ey7y8dp+kp+pkx1pfObZaqty
	tY6I0FqajDX88KLIS/n/DH7LI2Vm1rU5NRcmkj70=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f73d92416-c8b71372-52df-4944-8838-d530e0a95655-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4d11e7aaddfe07d50868ca4078296e533cae893666c8330b3f7607cfc997e11
Date: Thu, 10 Mar 2022 12:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646916084
