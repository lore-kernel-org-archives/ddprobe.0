Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C584289
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 12:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647866785;
	h=To:Subject:From:Message-Id:Date;
	bh=siXSo/1yy8cPRgzOng7jfQd1hepF66lh2ik5D5HzQFI=;
	b=e7QDmGjkQzepH7PxMUQFHm6cnumiT+q+KVgKP0l/C8DAHeqDJ57j/Go3zPaQiz6g
	wf8k/jpKW5Ew6kh3gS002RlJnrDV9Zd0sBSmPjM75VPiC+ePeY/ZUlMlHDjxfREftAr
	ftLiDs7Gk3+YGqqVTYqp6gZ4aPDobsESGnoR5EXU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647866785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=siXSo/1yy8cPRgzOng7jfQd1hepF66lh2ik5D5HzQFI=;
	b=bh+nHMK03MmVbWQoc/aq2NqB4w0d15HHkqdlNx9cS7XUc/aZe2zo0CDg+vftZ8v/
	1JtTRGCh37/DIU2aT4aD+yJN7xv4kj8ykF9Fa4fEsXyk/zTlKXz71Ckx+Ymf/zKb2I2
	GRzVNp/9WhkMtoiLe0G8OqcHTlRb15BNX3KwcaU4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fac83abc4-c52cf800-3a9a-46e1-b6bc-fa2ceea8d949-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68f399a35f66c2e0f6b737b216f037b65f48d3c3ec1b5cf7c82020f813585ec0
Date: Mon, 21 Mar 2022 12:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647866784
