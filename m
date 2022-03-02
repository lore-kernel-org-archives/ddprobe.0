Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5B720E8
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 12:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646224284;
	h=To:Subject:From:Message-Id:Date;
	bh=hI53VN+RISw1no5AXYShF1+KVteN4ZO3Umousop3hx0=;
	b=dNeir61gcEJvN3oEY59dK2fc+dBxMPilA3NXc21UWIR3Zzg4gdKR8Nszspkz/hB0
	31eNftY8/CfoQJyY+rZVbn12r4rBt59B9qRgDioovGqK6CI0oD2aZk5nEzt1ZAyu5in
	J3DsXXH5XmqTKIlZa04b17ro9zOxSHDL7PMoEsK0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646224284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hI53VN+RISw1no5AXYShF1+KVteN4ZO3Umousop3hx0=;
	b=k1fmCmGNmWIUFihqYFygTyEhTRsrm8ITJPBI0rBDPqa1f1TEW2qBKO+GjmrS9whe
	IkYrH1XmGiUZd2dWIkomiz6vhLHbYKYvmcTV6sU3MwFrN5IhNPSxvtnDnoT7n2QwQpo
	iiBaJ26tWWt2lZAdN9ENQBkI7+xKGuBkJPv0+MBM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4a9d1c4e-3cba0779-7577-48d0-8bff-8d0e7796d0ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29a2f6e5a6777d5d61b14a5cd5ceeee6886b4d883f866c738371e0185cf68cba
Date: Wed, 2 Mar 2022 12:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646224284
