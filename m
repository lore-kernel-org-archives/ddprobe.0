Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5963E1FBB
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 02:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651370998;
	h=To:Subject:From:Message-Id:Date;
	bh=ciJ4Pq/aSWA8AW8mAiM4KcUDFtj+hvMRxtLIbnulVbU=;
	b=OFZj7s0SXYN8XKRRXVpisU8oBidIy6q7WIgFn9/HfqtlJOxZRUgN2qE5vEZYfHf1
	8s7sxq0hlv1QBEbwioFl+otGr7yeXWjBz0nkRybc6zKFEngd+3MPkCmoCjaKA2VIzYT
	rtWxTumImc9XP/ggdAgqfoZ0erIe4jz93Xspyg3I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651370998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ciJ4Pq/aSWA8AW8mAiM4KcUDFtj+hvMRxtLIbnulVbU=;
	b=TZhJ39x4J2Z7zFdzI4jgkB10sKaAcmREA5veJlYSlzHjWqgd3xJbR/95k8eaJNc5
	9Ds+6v7J+0e2yjEeTwEgqXfdEU4SAUZHV9cpYz75aU3CXk0861mIK/zQl+e0MNzRt6w
	s8F9/j5JOn649TQa5PW50klMz0f3JQ1SmaxCdF6c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807d61ba15-a5336205-124e-4ca2-95d1-d7ecb79f8c91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1796a321ec65f6fc4bbee3fa6e14abf3d68f256ffebd420630795e1545369e6b
Date: Sun, 1 May 2022 02:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651370998
