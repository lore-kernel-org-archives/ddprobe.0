Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A29A7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659440452;
	h=To:Subject:From:Message-Id:Date;
	bh=CQBMMO0OOAMtbGO+g9GIB7/4TQfmf+fCnl8W5/7Y7RE=;
	b=eKNmKtDVgahNURcAVXR1L1JpfutgRqOcIojjKVZ+H18yXwx9gZXjqgZkcaQntgR2
	5PS0YJ9/WYhf6j2sV8wf1MJ7MHQgrnUzr55WkYFvFEaxBX+W06+GXfDKqTiGnfpXG+4
	j8KU/Wm/StNOZTQ7GjaIfN4JUTRkCw+A0RyfoH58=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659440452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CQBMMO0OOAMtbGO+g9GIB7/4TQfmf+fCnl8W5/7Y7RE=;
	b=GWJKHYJoRmZJbQR2RTSMYzyt9fAo/wH1/3IFjAzqCI8Tx378nd1vbVQw42xQBJ6Q
	iFnBAxlA6J6fh5Bj4Yp4ujxqODShYZnbVQydY6PBpM75jqMfl470r1eWcybThdoIK+y
	msuJ8rrQFRSILqun9WZgIPomQhOl3+td0j7FBsXw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825e5bd3b0-46f6efbf-9381-4a03-aa1a-f31b252b724b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec6bf74b57a4ba107d25c45d18ba1293f99ca00ab7f02eaa8c2b2a1b84560150
Date: Tue, 2 Aug 2022 11:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659440452
