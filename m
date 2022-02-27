Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1253222
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 21:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645996584;
	h=To:Subject:From:Message-Id:Date;
	bh=jbJWrdmOJ+zhU/s8sQYkOPhBpqlzRVP6cMNT+yxPubM=;
	b=ieacBgkFq0hgR2dB/j+YLkUxMiX7vBK1QN/SdNdYBVlRQOzi/3ZTakdlo9CVSVXC
	/KmED69Ms8ULjlzjqNYlivCaOKDIkPYhGQ9ulxBZfMqTvrkBQsH5kwM4iouHOaZViE7
	m5pUER+oA95LaP0hFjwJbWb9zZmlB8LNLXyG8TtQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645996584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jbJWrdmOJ+zhU/s8sQYkOPhBpqlzRVP6cMNT+yxPubM=;
	b=BPH+vCVUgbpi9jgKexpRmAAlqvkAKkozSws14AaObxKW/C6vaO16T04VWmnVZv8C
	cei9RaBnhD0bVMTqtOIWVGcD0ng4oAF4js9kJQZBnil9TwKPOxAJXIcuH332VjSjBae
	15cmqr+5EHNJEYyPBuc4dUCF/nuUtRAX71yJwY5Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3d0aaf46-06ded42d-ed95-4919-9721-7f4700c41660-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c4d221301fc8289284fe3410cfb487453629cb3a52993f5d60de826b1694e93
Date: Sun, 27 Feb 2022 21:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645996584
