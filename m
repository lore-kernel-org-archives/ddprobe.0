Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABE16539A
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 14:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645281385;
	h=To:Subject:From:Message-Id:Date;
	bh=xD5QXHigWNngDlCHr9P2F54ULHIxNZwE7xrkfozOuQU=;
	b=Utbg6zRzQ1XjUEeTsMT1hZGkOFOQ92rWySeVibG+E/OOO8Y+KxdbCu5dccEUXxGj
	S3x9HgKeaNiC7jOyFPNGjqcgjQT4jeSLnQn+tBsulDsJgbvjwu6j7leg13mPl+oZ5V2
	GvPf6P7UfHsFdw6LZKD72uHwp989EJ9F7WCJ7ClY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645281385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xD5QXHigWNngDlCHr9P2F54ULHIxNZwE7xrkfozOuQU=;
	b=Je1GTPLBYyA7uJ3fFHbwpevUFA4NL/50xoI2Cwv2t0hCnC0jO1sLLXy3/ERD0vfs
	Xzq+P9luJJBhriuc2zVskNRdemzfNexgHhExv92Kyuyh/pFmqBn0JfwZ0jpiXYBpusB
	qGpcg+Px1zD4uVCL9K0/VuCYu/PHBolM3t9Gx4X4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1269998f-54e4df3e-51b0-442d-901d-f183dc7ccf01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9824a78538527c1e71f5bced1cf7e86dc9b39bd45c90c0dd004675f6126ed558
Date: Sat, 19 Feb 2022 14:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645281384
