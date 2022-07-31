Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4A115D9
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659307252;
	h=To:Subject:From:Message-Id:Date;
	bh=6jZXEV2MWf/MERvc733MXOa17xajl3QTTStQJLKYYMU=;
	b=RuUXzR13fcqNHMyx4y+QHUmACNSBfQRcbpByeEYqaBJ7JsKFxbgbYrxPzR5uG6vo
	Nca/eLQxHH0hZbtO4beIf9LNw1ZBVMaL6yzgpeTQeUy6966JUedkAEZgvH8ne04ke3y
	/oPpZ+eMuXeb/8wXpRF4vxlq+f6/Jsl+FgQM+m90=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659307252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6jZXEV2MWf/MERvc733MXOa17xajl3QTTStQJLKYYMU=;
	b=PgRQ4vO8ar21qTYe3ERdgvPQaB8Y9+VkEqIwnXTzFCI7nVHO8qUFYmKQCG1bxXRf
	Z8lAdvd71WTBNpcJ85YGWB4feFMmupfk4M4oUNXvtYkY5zsKm31EBaMbtOYvKqSl/ur
	S5yPahjjtEvSqo00fS+NhtKfeoIIgGQq7MzoDypI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182566b5b64-d1d4d6dc-9f3f-4b5e-8c55-c38c46e16bec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 728575bc5ef499661b4c9428c4587e9b80cbca584c513c0adb58c7e7df454c3c
Date: Sun, 31 Jul 2022 22:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659307252
