Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A96257C
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660506652;
	h=To:Subject:From:Message-Id:Date;
	bh=qjPl/u2eoVE4qC1Ba1DO0Oj2g/LM0n44QOD9a0+DS1Y=;
	b=QCxMcz1oeAGtEhxhn7/SWeDZKEw+Moq4B35cJ3FXkX85j0vnuA7VOFYmWFxSnj9G
	Q1A8E8tqMvn3bCU7d0k/NOeHf0hWxbpXqPWU6rOa3QQbLCoHGG8BhzQkCr0gZZMvFjw
	bYWpqimKM0MnY4Pleph/HD2rDjHn/sV2MVwHXUFI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660506652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qjPl/u2eoVE4qC1Ba1DO0Oj2g/LM0n44QOD9a0+DS1Y=;
	b=Mtvr7GgUaQygSDfNbEJODyAgMhiHQS7Lr3tLfVLgVO8EcU1MB8Tjj4N+NUAvQSCB
	aVdRuwo+pXiDNgU0noY4/ACzzbomxHcBjQlzkOaCShuyVLqzoa3fI5IhZi2190aCWuX
	1S9ms2gXea1n+xKiplYr6gVF9B3tdg1ZvaczWn7Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829de8bfe1-f3080212-a3a7-450a-8537-ad16ba588507-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92dc21bde478ffb3b9fe02065adb0ef500ed5f0a9a45ba704482d09fdf0241b1
Date: Sun, 14 Aug 2022 19:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660506652
