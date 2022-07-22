Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7994432
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 12:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658491612;
	h=To:Subject:From:Message-Id:Date;
	bh=Jg8FIMBw+2Rk+3bX5tigcRfjNAfeKtRO7WjhWeisQ9M=;
	b=KOTeZOy0ep2baAAucJLoAdSHAnC24NStfNtgQNTr7xUlg1WRk3ielo4xAs3QjV33
	fLJ58QXTAfyW7dtZXoSLQdRs65tnqU2HcKI/dB88Q9RFqDPd/V8teMflfcd/iYiQoai
	eTGs66RO+e27BASMGanVtHDA09O8gARLdbL8PjNI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658491612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jg8FIMBw+2Rk+3bX5tigcRfjNAfeKtRO7WjhWeisQ9M=;
	b=Ux6tRYSkLxDYRXj0PvcgYxPL2g+rrTQhV3wiiXIZapdjx43jJchi3C9IV44D7ybA
	NgSPWAbcbQHyec47Kit0ofCPl9SxNgjqFJiNhHebLl1Z4bOW94HKKIYFlzS+9JQDx0T
	aVP4Z0IJnErCCsGK/GbSLK5b/WxT/tL0cpSydeb4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018225cdacd5-58730122-19ed-421b-8df1-2fe3d06ac0ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27564992b79f6b9342c55d568d825177c6477fc39288c405439ca1d50eb096c7
Date: Fri, 22 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658491612
