Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B9BC1378
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 07:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648020084;
	h=To:Subject:From:Message-Id:Date;
	bh=f8SGk/OJ7As+Sus4TUg+1kqtIlD0vfzSZM4WRa8v9q0=;
	b=cT43jw7B3ly+x3Il59Bg9Zi4zrMQUG+frBZWlf9tUkU3UHWon1qWvdvLV0rrL7jM
	muCnllrC62rvMeSLgHFojuQPahFZRHlqP8AuSoWFJQJLcIpJITKjKXUyrsNeOn1iU/m
	TEQQDg0yLy9ehGVqyiWDy7W+PFJgyO3LWdLLyucU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648020084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f8SGk/OJ7As+Sus4TUg+1kqtIlD0vfzSZM4WRa8v9q0=;
	b=gR44yHdwsM5nrTxshrTMcHSgfSFmxhQ/tjIQje1pB85u0xEoV+M9FkSOkD/TYh4D
	kcb0bIgRI/goUqecm0dtyYcUNRWIirCvmWgoYEMbETmmJJ/mIjgs4FRdXWVBs7doYnC
	ohBHx2+1WKS+0Q4o4Tduh9e14PcMvtCMQxt5PolU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb5a6d80d-577e4507-ae25-41d0-877d-e73a166b1721-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 350d64374441b849246bfc01cf57f60deb0c60504702dec90920e21b10b0de91
Date: Wed, 23 Mar 2022 07:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648020084
