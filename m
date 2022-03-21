Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9925A33D1
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 11:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647863485;
	h=To:Subject:From:Message-Id:Date;
	bh=PoM5kVS0h1SaxmzjXXsBs8eqyMgWjf0+l99GM+dU+j8=;
	b=MiEKdrVR76e6+vbYpmO9E/DFpQKR3VT09sL7jAp6byiM+JaPmgYQCv8NwnjPEjws
	tuOnmvULk6GCGtc1ajZ1+ZjmzJfajfd9a2fx7LE7wxbJ79YL4rqSj55GIwT1Qx7hhxT
	D/trJjaweNLpHhLbnAwhR2ZjDTZkf+o2zUb7YC6A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647863485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PoM5kVS0h1SaxmzjXXsBs8eqyMgWjf0+l99GM+dU+j8=;
	b=ZZWxnVNPJ2yWQTACOtfYOTgxYrapfqw1dfEw3vW3evNiPalH+G+g3+uKBLiZfsyy
	caJ3if9i41Bm1xVNWBw5oUjlOXOZ4+UXQBiev6305mSkKzcRf6i7g7ePUHljO7XvMH6
	el/aKUatEotxAxLvtZcANkpBYdX8Cvf9xvWfevQM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fac5151b6-21dd21ca-66e1-4ff3-9c43-93e2693c26cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ad82b63b1520e3b1e7d81aee60cc94b799d981d6f824d948170990c0e3cfa86
Date: Mon, 21 Mar 2022 11:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647863484
