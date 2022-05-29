Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DACAC7F
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 10:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653820379;
	h=To:Subject:From:Message-Id:Date;
	bh=D1oh1OKgD/DLcXf7+NY4yx/HgHLwwnpOE6CqxDYdjhI=;
	b=EQoILz7v5rd+xW2ucvGQBB0xlbttERYLh+8BhInJ0chnnzFRTKuTH0woxllG6wdu
	Gu+AidsajhThwlb8vhXgRUIRF0L+2gEmaC+c1IIBS9yeR+YFwO0KdqdLvDN78lh83Bs
	OPortz7imfLWDXhvoeQj9fUXQq9QPoUV8kmJLq0Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653820379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D1oh1OKgD/DLcXf7+NY4yx/HgHLwwnpOE6CqxDYdjhI=;
	b=H5DinxkTOha1+42bhGsvzCzjLjPEQpKGFZo6tYUZPUoq/Kq/MP7pIauu6jA6V/ui
	YUppl3qkCLtggDVJ9gpV18VmVxhwmTJ1hoUBWO9wWu3yLxPjnPV1GvBZ5d5mCxpphDY
	e6xZv23njND+eOjdFY1xp4Vq1dcverDarT499iXU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810f60509c-dbcee0e4-21b7-4f42-9b38-6d8bbf287bf9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 580765fa707e1e497f5854c072dd956e20b94aeab38b3777549717036c2f3d6c
Date: Sun, 29 May 2022 10:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653820379
