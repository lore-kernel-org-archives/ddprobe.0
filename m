Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5924A33D1
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 11:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647863784;
	h=To:Subject:From:Message-Id:Date;
	bh=VYYXnBE1p9trfPtktnVxZR5Jo71L8J0MBbYLXqNeSbw=;
	b=MvqiCJS3B1JacpWLJIq5TwnoyBYktAcJKiAP96eL21osU3EtkVqvwBJsm97oNJ0C
	P5NpOlXYkB/IE/w2B9xRT/3RDbKSE+OIgxo5eXIv1ljmfl6OZ5zuS9N3o0qy8D6r2uo
	OtuEzkXga+QPNGOg1roH9RAFgvFrTXxf6Hu7ullI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647863784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VYYXnBE1p9trfPtktnVxZR5Jo71L8J0MBbYLXqNeSbw=;
	b=hw5ppNVlt196pP2zz/b3OqYIi2DQrTvXQguKT/+a+Av3cUytmBi3ru1e3HihEmNJ
	ilyuwf4+Y3KMI15R0t+Ojrd3USv+yTCgk1SP988mSLTX/tCxM0/JSau24jHe9SIvxK0
	anmv5iwEKu5hHRulpiog+rtzqFmkq31nsL4g+TfY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fac55e513-736ee80b-0c08-43f0-9871-0474f274155a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46a99641fd659d4f0a1db744884c68a7a16477745f75420806becda60f3f67e2
Date: Mon, 21 Mar 2022 11:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647863784
