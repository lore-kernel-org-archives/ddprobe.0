Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB87A2F2B
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 22:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657232212;
	h=To:Subject:From:Message-Id:Date;
	bh=kXAtLCkmlDPD85OzmWrd4FUDKuJJtMGgxNGZNlyTGuI=;
	b=MFa8JcdlcUmC8ymIZEfbjbcG6ereXxdyyTVy8mf/vVDjfyOsThmu2ahAzzi49Nci
	ff3SCxA2CgCLUPF2D6dDj8UPS7uyUYrLe0oQNy5XKscmstx6zlx6WR+JT3hBQ6bHkIz
	DMA9ChOxvy7eaUXd7/FvPSVMy8xMogK8j3nKA8tw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657232212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kXAtLCkmlDPD85OzmWrd4FUDKuJJtMGgxNGZNlyTGuI=;
	b=d00ruxXipuviVivDfY9wKg1Gut0b7mwWaOJ7x9MNv3u6jjowEzuhoYI1fq1/dW8J
	UeuX3UnWtTEnqpCmvs5lnnrzzMe/g2v1PnOqlzXkVp7MJww8jyzK9kGPz1o5xMEjXRI
	tAKHoHQdrYrf+9yAHBJB1NAGVR/NKL/+oyA5HMuE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dabcc136-b6c81ef8-78b5-4459-8db7-f6ccf1f73287-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5319e8a7bd67ebc696dfd4367b27672174c372df1ef6905e02a9488f16bdb2b7
Date: Thu, 7 Jul 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657232212
