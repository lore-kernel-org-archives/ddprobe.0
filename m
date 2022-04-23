Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFCE7C
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 00:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650673198;
	h=To:Subject:From:Message-Id:Date;
	bh=LJVTHIXP0TzWsrezKQLP8D6fsA4rqwOTwguXyaIdNM8=;
	b=jk5Cu4fb1B9u7IImw8xEFZTFBmKbl28prPBjuzxdI0D3guvc3nSoyzw9zVuwmb+S
	Z5fG0Is+7v6O2CEXzOSetlGhYXW1nv7uSyJaNSUPWxzSVwalLqI9ZFvgF6Om2LfuW1u
	IRlfQFqrjN7n/M3nRkFyZzEJ7m/wPeNBr3u0YQOY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650673198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LJVTHIXP0TzWsrezKQLP8D6fsA4rqwOTwguXyaIdNM8=;
	b=QxhX8eZuf/ozQ9sCHLuoq4f6929z+fRNlBqCg9Et2qofuBQMiXFgTYfxWobClCNZ
	67u3Uee7sCXj4qxneTe/aSUpUkj7wPZbJFzsd7xCFso9o/IgcG396WA5JHBXCP/WWrP
	qVDmrwMVxqlaQI6SWlGy7BXaHER3CU/wEo68uibY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018053ca24b7-61ecc6e5-9f1c-4995-9f5f-374c4ae1ee26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70f89d0e84a7bec619c97de3fb614b48390af05be1a3a564dea93db8fd3aa25a
Date: Sat, 23 Apr 2022 00:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650673198
