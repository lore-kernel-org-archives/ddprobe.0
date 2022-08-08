Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAE0128EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659960053;
	h=To:Subject:From:Message-Id:Date;
	bh=kzC86mFRqkWL0B3Ir9ezRe8p8LmtGOf5rkwd12pHY5E=;
	b=UuG2pjOlIgB8z/dMdNFzcpFFsJcU0ioVisYNyd9P+lx72U91CLrjGddQeQXlt2Mt
	f4+Ojiwhe8OGnOeCf3LScz3YTdSVEo8ozgWN/jSQylbJKxgbYBwKriLl0Zt7jc3o/d8
	ZsVa7mujsQytu/H83kylN19XtJl2QVsJnmXdG7Yk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659960053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kzC86mFRqkWL0B3Ir9ezRe8p8LmtGOf5rkwd12pHY5E=;
	b=CRUKIjCKwsLpzzlMJxJX0m7B1PaQDyczz69i87k6I/yxW8bEayaE4Dz+iZPgFl4n
	CvXKfYYWNCnvaE38rkZDqxur7pyPF08fJ7ymtWh1x8IpAdBrXyIPDx1Wx8WdiPtp4oy
	f9fZMGC9jfTI52UXn2lvmNhuIRUF/TGbqNrRvkag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827d544b3b-1bfccad6-4a75-46c8-97e0-74de0bc8b113-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03079dca60150f65dff2d00b4ab3d771f42cea8525863823679e69ff8ef29a9c
Date: Mon, 8 Aug 2022 12:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659960052
