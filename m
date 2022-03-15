Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6BF7A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 19:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647373885;
	h=To:Subject:From:Message-Id:Date;
	bh=rya/0X4GKhf0kNLFqWzuFh3L2wpB9K6/Es0JD8lAWf4=;
	b=lYCM6peiI+DIWUrvG1w+cHtSHSVADT5D17m7KXDMH34npGtsEQL8VMyDg3H4JbM0
	zvWDL9XnjtHiqn41F36VIFJyMg+nimRQtFtLxdr3UzSEfuF8tivL+v/v8M0o8CVAbZE
	kyxm5spvr5D/rngXbKo1BaUELhkQW59MrYhSDeCw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647373885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rya/0X4GKhf0kNLFqWzuFh3L2wpB9K6/Es0JD8lAWf4=;
	b=EPRr/24L3P55Jve8ATT0A9OxloZoPEqWjAFXvYNt3OGhI2dblB8wIUzMahIYivVX
	bs5U7t0Xru3sioEK6JSRTMscJ7mcGpz46hxfGLoCqs0XQ7/6L971XaWnxTRBJAx+cBx
	d82p+TjEHJZnaO3H02PnCpa9ZTr4O16ZZnAags9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8f229dc7-600110ce-4374-4535-989e-e8efb30c9ecb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1375c88a3dc6989347865df67b7fd0c0e96721e7572615ee1a56551a31ecb09
Date: Tue, 15 Mar 2022 19:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647373884
