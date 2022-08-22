Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C37C64D
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661148052;
	h=To:Subject:From:Message-Id:Date;
	bh=tDGn5UsVtcu9SL+3E5O/kCvGoqb8Hr7X3j7iE31wld8=;
	b=Y/sYhKfvksyYZ+uihf26i+YDr7UeVKLX2v0hCSF/B4DQkLcvR3COSjktsQrbAKKI
	u2thlBLKrCml2ndZ+6VQuoHJlDv719GnnTEGKwnTxjqR1CbY50VhI4YI/NRMAJkZrJG
	io+fo/RMTkwDTJ6LdjsMYepMPRG6mzSxldC2MEUg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661148052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tDGn5UsVtcu9SL+3E5O/kCvGoqb8Hr7X3j7iE31wld8=;
	b=DNjMzr8F9hffdxYM7lPZTqSaqiMOHA39Q8c/LmOPfFc7cmh9T/GDVObBnRZv0tGm
	7vZibhJQZ0OZapzEoFjMjJVti0y22R6EU14gO16c+1JjxdNyYJNYh8/nJzVmYcrV9DA
	XPlm5Mp0quiD0U6nt5JPMyeN0Eo34X06b2P/elqs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c423bc3d-b7523aa6-97bb-4e9d-ba75-97e8d7a8992b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb59427fa0e7068a4215a7361ec67fc1938c6030c76ddbb2d602d7fa803a2b5c
Date: Mon, 22 Aug 2022 06:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661148052
