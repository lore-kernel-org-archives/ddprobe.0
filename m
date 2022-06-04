Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF50136A
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 10:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654339259;
	h=To:Subject:From:Message-Id:Date;
	bh=RkdgbZeTxkdg6OAHG7Zjk0IyjsS960e4fTu88qNUIT0=;
	b=AFBBmi/yFltlAjvnyaaLwes5kZR9Mdn1VQWnFWVsVJGoacQra1UOnjJeUSYbOZ7U
	RRJaOSeuSazwiAcCgrzPW25eoK4dhYj8Xj1ECIYPP0VsJoOJmC50elRW8NN1/VgBOPp
	pl+UduMroXQT9YznClIf728c5+6DwKvxVWGomPmo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654339259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RkdgbZeTxkdg6OAHG7Zjk0IyjsS960e4fTu88qNUIT0=;
	b=eG+AY3Nk+OHBc/bk93Q/ATIe1aiMn8MkcNsngjWYGQuQdn0DTOjknbuBADFzIqW8
	/nTYMiBiQzBlQTuiuDuYrDmsU/9f2E9moy/NAFn882baYwuL/bqiQgYDY+pqN2s/77T
	o+knLHFqLzdu3HJKZUlP8igTUfQJxAL0s0IjS+DU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812e4dcbbb-740c9bda-9466-48bb-bc75-71b7da7f900a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e156390f4d683a8215d1f43e7546d38bd4a2883aced9a4968d3fc80ffe244bd2
Date: Sat, 4 Jun 2022 10:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654339259
