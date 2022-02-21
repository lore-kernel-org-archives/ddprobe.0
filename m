Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79FDB7E
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645458985;
	h=To:Subject:From:Message-Id:Date;
	bh=7+HXoDvXGnArMlm9IDKU1q489/OvtLlOkTVMjzwUE5g=;
	b=GprcVX3VG0uC0cBO3BAUrY+FSuIEDjklElLj6zSeiikJGI57Hto0D8uWWSaNngo0
	UDtZ6i+9qQlioni/vuCtuzho1bFqVMjkkAnWzBtTartc1+cB3wZ0Ofwgs369jfPLCzF
	zFpcZwf7I7T4MqK6JCG49Ls39bpsd6A0fmpxkfhg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645458985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7+HXoDvXGnArMlm9IDKU1q489/OvtLlOkTVMjzwUE5g=;
	b=IW1m/LD2jxEztN2nZ/oNoWEBrGcJRweSROYG7JSA8OcMS4Vn1rV87F8DHXmDp5ea
	xTrXhTLH3KQaRz8ZnHfZFZJ/ujs6qQ0LxRh2iz+k2Pw6W7+5E4J8Lp3ajJgfsAtxPih
	0c5MKslB2ARZYJHvbTMFX6x52PVB3Atim7l4KNtQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1cff8f70-9ddd73fd-ac86-4339-a7a7-03e56f5df92b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7324462021efee15a48c5389f35f1fac7303c698d71eb7459e6a39df12888cb9
Date: Mon, 21 Feb 2022 15:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645458984
