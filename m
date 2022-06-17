Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5834E7F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 08:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655454719;
	h=To:Subject:From:Message-Id:Date;
	bh=3mZfAi/kaTWUAb9MBtG406BOgZquby1sKmkrSWpPFgc=;
	b=U5RAaCNIxMcWZGotE333UfSnADSTWuj+WkpfHk/tJD3zfiCb1KcWuW10uurAyUV5
	/Fxy9qwsVKQ7TL3Pi+22EBBwRHgP4/CgbSF+ey6kmfy0bTh+ij5G0BxfDmbGs2X1EYl
	QtdGZNypPXVei4q3B5JZJk7z0jT5aNLr8dFYwVLU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655454719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3mZfAi/kaTWUAb9MBtG406BOgZquby1sKmkrSWpPFgc=;
	b=ID+u3X8YuO5s4o3/eqmsARBWZGikCmADd1C8DYXC3lbX43m4mr+qoTEHry/tADaa
	NJBxqSiBTleTzJDHzA93aVN+Tfliw9BwH7HdG3HOcd92NSqMzP3Lgxxum2Mz93/L8u5
	TGR7NyqJzkiEn2YL5CCwwYHxuADHhobRtGSlJluk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018170ca5d08-a63404c3-ce94-4bec-87dc-d4d55a136d22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48a45a0a4846fcd9a1088ca87f9c5caf94093496e398b4a3287c0c27a4fe449c
Date: Fri, 17 Jun 2022 08:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655454718
