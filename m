Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA1E8440F
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660828853;
	h=To:Subject:From:Message-Id:Date;
	bh=pL2QgE0fxoiQFUEjKrGyMXNbZedq+daQfddrWXwZ7bc=;
	b=I03i+NRyS2RU0bC92JwxJIOPreXs/RM9A1zEKw7F808SknMbqQlK01+0QgpfLQXx
	xhNZTHOOgYKfPU2LIs5dV/978MgJ/a5EAd6ECncWhpXzAUA/ygXXDeupYG7nxMp3oJ0
	iWI9lmYdkrIgVQq1mZVyKR6RRQ4b57fFdBDJwZZc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660828853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pL2QgE0fxoiQFUEjKrGyMXNbZedq+daQfddrWXwZ7bc=;
	b=QWyVQi4T9DvAoDuD1+usQ7kwNRyfbhDUtzDOi7RBTOqCiI0e5dhrgKBymv9G9w6y
	xbNhx2mZpMd97hRM/KPHWHnhk92txyYAGFSrnl+AKeqJkwlbERSm61xvcfryoDGvHJ9
	Gdyz/BUImEsMbGcoIJXZIM4M6dUOyp+pU1g8SK40=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b11d21a6-cbf3cea1-a3cd-4786-b1c8-7b854155318c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91ccf10da78f40675840fae838ee286dd9cd8706924b74c309fffbd5b1225b5b
Date: Thu, 18 Aug 2022 13:20:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660828852
