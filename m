Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F26429A1
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 23:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652743679;
	h=To:Subject:From:Message-Id:Date;
	bh=HITob/h7Jbe5wvCR5uHp4S480UxtB3WQcR7NHdj6+f0=;
	b=ZkoUi3sY0B4A7KdtSutUDk8gv3j6XPqtkzFLq892KQcbs460Q+fLT8EH7wavp0VZ
	DwwBUbn97jivUn9HdHf51ruBTpsCg0p3yG10Y4jFbgUU1HSIjvNj+yD3HJHeknQUHoh
	rRbkE6GXhEB6au3iu4O37/iI4TwmSv53v4QOp7r0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652743679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HITob/h7Jbe5wvCR5uHp4S480UxtB3WQcR7NHdj6+f0=;
	b=KU8WGoNf4Fcd2YLSZK2Dev4H2a2DRRImfeCzsWKppfpsUTng48pX7BwSxbh+d+9V
	8lY9deLQyGLIxdPFYM71Zn7Y/aqR9wqF7E2QzqL/LarOuvKqB04y/4TmcQXdc/RjzVl
	iBneuC+dIkFJ+ioBqBmRpUViqTapn+XNa4V1fpEE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cf332d22-773caf06-357a-4427-acf7-285c8034ef55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3cc75c881e7725511bb8e6eec3c01574a1712bbfeff995740dad68b7f2d609e
Date: Mon, 16 May 2022 23:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652743679
