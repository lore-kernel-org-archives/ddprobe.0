Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2042F36D
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 04:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651723918;
	h=To:Subject:From:Message-Id:Date;
	bh=mOWHYRWxotTkT7Rm6+65DmTVe7k7DhvNMqMmGmyP6EU=;
	b=BGK0nHmZPgCQ6QHTIdZjo/ch5MNn5kYvUmITvEPRRn7zF+yPj/OKKywwo6u3FBZ8
	Xuj5guIe2r8+F8oYyKUYuR45nqgTLkp061zhU6mEBIdmdhOQGXh6jWGG7q2QGhimTZa
	4ysYBDnOKeokm2jryZ9iRLetMxeCqAST81AHF+9I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651723918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mOWHYRWxotTkT7Rm6+65DmTVe7k7DhvNMqMmGmyP6EU=;
	b=BXYYetpAccyr8lYISDrKybY4JW0ZSVHOCsVJ6GNT5IEHsSIcNbopmIL5N1+g1MRH
	HR5Sb65A2HfbgEv3suYYta4ng3m1O+bmqr4RYhEn65Jk9CNYHk9XCjXom8a5bCo1Ea7
	llIZcGGlusL+K3wXysxKwTh/DZYUfa4PsxpMyzRU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180926adc1b-5c5ac620-fb4e-4ba4-96b8-003b7d03afdb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6df4a2a86206285c563dff373a55b4a06dd8b44e909c9bc48f40e8f07682461
Date: Thu, 5 May 2022 04:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651723918
