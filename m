Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E66AA3D
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658908852;
	h=To:Subject:From:Message-Id:Date;
	bh=kZr+nLErqLmuZJIMRdad8T64vXQZB+UigAvOlaRDd/w=;
	b=e+i8W9CmT8V0yC27KkdFMkHGKKxJN3k7F0XSQU1GigvEgT/+Ug5fEEtnQ9un4ivC
	Z6Jt7M8luOnYm3y8FBuhDgZt0yMzV43Hb5UhNh4vO4Xno722wWpsJ0RHdeHa7p3Sn4y
	aKUNhBL4p6ZmCOVVKCs0bDVIBygmVsbc6mmTbu5A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658908852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kZr+nLErqLmuZJIMRdad8T64vXQZB+UigAvOlaRDd/w=;
	b=aBS3+ZQn9FbwuMkrnDKk+LrNLVdMxAIA6BJ44I+6+xWlh7nwixmT5Um6wsPeXS8N
	NQq9u5NlZDcSr3azcboMkZqNREYaH6eH0mEXgye9xDs46JoFxbDEEXgpIw0KL7QqSq2
	hwnqkaa5ANxuJBATqBp8jQM/r7OgHhAtdbBrBcws=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823eac414b-ce32d9f9-7c48-47c7-9f93-1ae9cd48a59c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 662c4c7bcdf0fa567984253c73f9b21dbd7fc7d6ffe4925dc31bf6142364eb6c
Date: Wed, 27 Jul 2022 08:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658908852
