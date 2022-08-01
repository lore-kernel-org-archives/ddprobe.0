Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72C0D7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659348052;
	h=To:Subject:From:Message-Id:Date;
	bh=udIQFvKYQDKHrOQW0oRTnnNMxY0gy7QnlnIfFelNzTU=;
	b=QmdANW1H/myCNgQB3ZtOXEM8rxWsfDWMKUDJTmGJaHbEwRv88w4kBrvNs+TmOCJ2
	CylckW4+HLR5PzCDSEu7vB9LiNOuG1G5vQc07F/MMRb6TXuIUeVxoDl6g3lTqqzQhGv
	Bxi9ylgbWwE+smYmysMhgvIYqFQaRv8pas/cba0k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659348052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=udIQFvKYQDKHrOQW0oRTnnNMxY0gy7QnlnIfFelNzTU=;
	b=Nzjh9r0oabuydvW7FS7etJmRTAfmql0dcml+mJeiATs5GTbFVGZlb5Gxuqybf3e8
	z8kE9k+afkgtLeuoV3UxonfiUsCsF7KzCWjk6D+lcSEE/7zj7AphdJu0qWhB+KzhED/
	7y5+8vqQqIgDEsyg9Xgk4LnsNy3hBRW6b+vUxAPM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018258d9ea54-ad19ab4b-2141-4576-b121-4f0335c390f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4c92fa28db1ec839ba9714b02c3587efafadfc4ee6487da6e3976a84d30f34c
Date: Mon, 1 Aug 2022 10:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659348052
