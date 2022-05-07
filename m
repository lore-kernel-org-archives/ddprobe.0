Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535ED800
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 10:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651920418;
	h=To:Subject:From:Message-Id:Date;
	bh=PekEXayW0TepvSwtx5+NJX277ErRWpM4JZSg4nqdkgU=;
	b=DYH/EkH43VBDT4C1eWHT8zaQ/6kbY2RFlQlFsu1GEnXda8BxoVrnbCVlluP8+d2L
	UOeXwP13FBr9BIMY9lEtzjSqqlVfM9kW0YxuLY+xrODCUvQJkvGRAoKvyD6v+oSNmE+
	0oLth5R3eR4O1OM/8O4ovzq3GUSs4bxs1ASOzyBo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651920418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PekEXayW0TepvSwtx5+NJX277ErRWpM4JZSg4nqdkgU=;
	b=k8JYv29lgrMQ0uPDt9NmU+/2A+2SRlgf0GNh1CDNxLqlEgaWjEL0KDp0pUiUfbOj
	ESporTw3dW2ZjORGcpE2atJqNONQmLMPba+CYxCnz0yoNCVaeDjy2GyoNIUMcZMrF0x
	ysDxI3zf+btBvTWOczHs/daiGdcUcNud90CQUVbE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809e2135b2-dd74b185-194f-419b-a9aa-98237d77b66b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d8fa96d5bb84b3d7fa2de99901baee41cbda4efd081cad8bd5ef389dec92155
Date: Sat, 7 May 2022 10:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651920418
