Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B67517DF
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 22:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651530778;
	h=To:Subject:From:Message-Id:Date;
	bh=mtC8YEhqL1i/Bx2igN8P02ZStEUvv+aUK5FNHjTO19c=;
	b=ONEd60MHQORfvh+9ysX3+IlWc5kgyohgNpqPVFKPe1ctdXNfzVTyoUoDxwiTmlG2
	DvtK6BJk9lwvisubyZfcTcbWglGLlJygwi2hHWs63+X1o15CbjLwAb9wkZf8P3uZnGg
	5fY57IqILM02j4C2tcE+zIDECofdLntn++XTmgbI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651530778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mtC8YEhqL1i/Bx2igN8P02ZStEUvv+aUK5FNHjTO19c=;
	b=k4yD/wsgrgN4sl3Z4ZwQN93uiGDvQvtOEeiG+N6CnrUxaPzXHhk1dzDeHIprGx/2
	81vxoQ28iiwbhvn3kMqS7Nciv3GZwK8gnft1FYSzr99S6+HlZLwXPu5B9i2cc5cGbee
	mHrRXMjK0IQi2sBME6rTqO48TOQa3sjqnTr1wlHQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018086e7c69a-55ec0551-e49a-4d4f-8ebb-e2a6f33131e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9214b3f55ff1e3a60ad7ddb67e2af7a8dd6517a5cb551f3e2c1c42414328690d
Date: Mon, 2 May 2022 22:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651530778
