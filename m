Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203E07E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 16:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656952612;
	h=To:Subject:From:Message-Id:Date;
	bh=6ycdg4d+dwIqEFLUdcs+oN7mQkKxj0OrAAHrBErvFzI=;
	b=YF2lOn5LW/IINmqdBNkGWQpMLyoAeDCxrjoNrp15UdocfkN8Oq7ZwkskGEkyg2sK
	51CwUGn54ylfvfwCcZSQT0cownfVd22DyrFSvFZh3+c54IbEfXVVbPLMyMHlT6B6Zb6
	ioVWTb89bLcNImtgJ7YBAGgDCI6IteaHbQxB1apM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656952612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6ycdg4d+dwIqEFLUdcs+oN7mQkKxj0OrAAHrBErvFzI=;
	b=NbmHUWtIkGyx0AGFGfITLFhqwsjELgZLCeQNOrIe10878LJCzUPfmHmAO0fuW+XE
	lvxwvhzDxSvrAdrhVdTun0s2KsvR4rAg5zyqxm8G2x4SXSbI9Z0dCy6uAarpwnDkMV7
	zg0E08WVLgx1Dy1AQsR8QPdOlHSIVQ/YnlRYH8iM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ca1265a1-83406bde-6b68-4892-98bd-66a46aee68df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfa3debc67c0591ca1a80b9f2b10b5df17a29383bd905e3de4d78d5569d9954e
Date: Mon, 4 Jul 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656952612
