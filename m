Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155AA7C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 16:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657037212;
	h=To:Subject:From:Message-Id:Date;
	bh=B+RLAgGu/8yQqNeoLJy++PCg7w3EiaBrGyd/+bQlofw=;
	b=EgDgxw7f1uNuoR6qVXmjeF8wh75UkDcs0Wk+eluaIjcE8GSRyzN18MxiWxBIi4eP
	H5U0X4lqQBZj1qY1QjjLEO79fEpyGHL1nI2BdQBaCGEGnIXf5iHEI9skg/LwoE8uOO6
	W1DAiSRAwB8+aPOSo6Q3ivreBG92v/A65agQ9+CU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657037212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B+RLAgGu/8yQqNeoLJy++PCg7w3EiaBrGyd/+bQlofw=;
	b=Pw8b7hSuW5Ied514Lu7USRzpyJqwRQoEId9ENUSYgGDBHs17Mbd2/5Gow82u6TA4
	bQlSanJzPUC8/qdkdFuLr1AdypUcdjyQgz+6VHTri5gJPSgk8FvmiLIVU2YZBc80vUM
	rKeOyKRau+jzM7aa/KIedfxrUiGJ3ADf4VUWxqgM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cf1d4a82-3da63b70-1fc0-4c8b-8b4b-03c412155803-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a35db67aee378ffbf7af8ad22f608a5b9c2687863811a2ef6538a4a705cbad3
Date: Tue, 5 Jul 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657037212
