Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F8D87A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659030652;
	h=To:Subject:From:Message-Id:Date;
	bh=ZRHc8vXJrLIwORiFEM8s57lCJms7yhhzs0BSP/q+KNg=;
	b=fwzBpl5WPnP1nodcSeCQxSq5YHOxY1C1aP3pNENBsmqVVdLoL+xhQska+NLxbvW6
	0wa49Ghl4yBl+8n08fFT4Iy88BL2mnqNs+A+oAe+2H5XGpPBjySD5ceiF89w6ruT7FP
	W7jno8xaxn5nOk2AVbmdH/WHj8RuICPYVYIabjrY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659030652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZRHc8vXJrLIwORiFEM8s57lCJms7yhhzs0BSP/q+KNg=;
	b=dNCHjPJlf4YAHIv8UNrX96pXsH+bxaIeQpeBKT2UOTH3YvsaemUTLVuvmVFrCLJP
	DvfV2n4JO2I4FzVIctVRYQLkOykWms8g1fG+Z99piMEFv9IwzdTtvHunRlUh6cGZR57
	r2V979mYZSKJuYGYJNtrvoTp+9+Joipuvt7YNHzA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018245eec68c-46da148f-f024-4c7c-bfe6-f95e4c3b7866-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8c0a01a81a3c58def7cd5aee4fa3c1a3bfa0438f59a475330490e177587e264
Date: Thu, 28 Jul 2022 17:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659030652
