Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D2E33E4
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 15:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656345412;
	h=To:Subject:From:Message-Id:Date;
	bh=GID9efhPwZZVWp+cMQ9jk9P3x+yAMrudG7SdVrojUG0=;
	b=haLrmnNQV312PKmfk7rJ7McQfOhyqKCMSCSHKdcRyAbdAEtwT9l88HMImK61ndsW
	n2gAMLQTaUZ1SyitTapKpIMli9vp08G1ZI6GBNX7CHsyaYalR7yqoPs3mcFNN6gHKzy
	5uAklr5wprhgkS7ZLuaN5baaXRs3FbUSEZiXfHeU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656345412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GID9efhPwZZVWp+cMQ9jk9P3x+yAMrudG7SdVrojUG0=;
	b=NJbCa68JjLY2j6YfjU0uVGRs20JQvLxFKe+X1sC/B7cP0eSESi4nPR6rJHWI4MCc
	q+UYiOJF1EhCWI3acHjm+S1usybm3H3A7mWwX2a1hc5zB02Qcv49qyNJbdHyYs2xoJr
	//ujO4QgACpmfZmEYPjvRXZmbFOer/9LWZmYtOUU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a5e142ea-1da7bfc4-b72d-434f-87bb-690fc6d7a23b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 588c866adabe23d651ec446c376fbdc5ed6e7d9de0a81bc90451218a0e7c0b23
Date: Mon, 27 Jun 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656345412
