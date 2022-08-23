Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6745A5C91
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661293252;
	h=To:Subject:From:Message-Id:Date;
	bh=g1tcM9HdJbUm4mQ/da69ug5KxbUhTOgZlBCjB+kThNQ=;
	b=LI4VNhFMPuYEl8lSIMrPthsvAhXnsjW9EYzo5hEWA9tM/mxP+4d7kyKRzNnwakyX
	VN6sPOF4rp0+7irKwhlP12aaz07/qQDSV3IOLy//CPdJtlqec4/OUlevB+ORCBjEpvr
	9n/Udw5eAuhiF44nDCj0Pr90Esk8THanuRtUXvmQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661293252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g1tcM9HdJbUm4mQ/da69ug5KxbUhTOgZlBCjB+kThNQ=;
	b=fdtO8gMyn7axzXzNH/NcmHelm/BwxhLRtgY4w1MMySiYhJ4Um8dSal+4/nJTLOPp
	lb9ECXCjRgdHWN+o6VIgxOQNKMIZP78aWTgMWiFR2MoBuXUvEruVv2rwIWmKMacxF1A
	y3aeWRKK9VrKGNogmqFjaYe+mFQ1dX3szWHr4GUw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cccb4fc2-847237da-7ad8-4b80-b77c-bfbaaae4a5e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a528e7cd8e2412171f7d44f6ad19f9a79027b1df40bdf68ac9e3b6b546d8df4
Date: Tue, 23 Aug 2022 22:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661293252
