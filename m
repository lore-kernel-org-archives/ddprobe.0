Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9EB15A8
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 01:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649899258;
	h=To:Subject:From:Message-Id:Date;
	bh=sNv+Hx/v4URQjjSwEaHNZmGG8An0aInBZgshiRxcK+o=;
	b=Ynyh98VxnB1qU+yfFO/Xg2nyNPIbZA06YegJ29jecZHQKVKPQ/rGTqnqX1wFCB4f
	2x9JkGoiDDb1aLSnvtDaZzn1yjTx1EaIdaiOuNO1YVW/W9QKQKcWmqVUqBMEM86aGaP
	hcFDgeL35J0LssNOCGNIgk6vIZiez52BvpD5b6Pg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649899258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sNv+Hx/v4URQjjSwEaHNZmGG8An0aInBZgshiRxcK+o=;
	b=PXHKRl2wK2jW2qBVTnapah9HBOhtY/rawK1ur0nQ37NT+sf9Ex/b1ZmRaa7oBeK8
	d7EQH22UMfGX7k7JyN6IdysES9DB29UXQ8hOS0XkRvX7m6yugOllsa9jtv9JYHDYo4m
	BA5wyTeu7MK6dplI3qz6gur/3w2bXerNDRZah7lo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018025a8c1d8-37ab8dab-a201-4545-b0fb-547820d368d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e61ff7331461e27248f1be67b8f3cf3e0d33d28ca927547d2b4132e79a235e11
Date: Thu, 14 Apr 2022 01:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649899258
