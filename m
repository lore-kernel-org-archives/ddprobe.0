Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1331F2583
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 14:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651676038;
	h=To:Subject:From:Message-Id:Date;
	bh=5i2iXfeAxSwPlHlh2PW/XVJ905MHxtkZm82M5f8Cqd4=;
	b=Z+xVj3Eo8W/odlnEJR6OVPX4yymCh2Ek3QN2ayaRkH4h/VSTGpUXQm2XtIBa+L7t
	6ewGBxORbj64LDE/5hkyXgvx6LK+2AedQSff+CbiYfFjOv7NUBpx7JJayZTOQX5+elm
	Ir4bdlNlib7d5HJKYIInt/v7C8zm81H6eJidpZ4A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651676038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5i2iXfeAxSwPlHlh2PW/XVJ905MHxtkZm82M5f8Cqd4=;
	b=Z8NwUrXdvcVmgaeZnMtetFyLO6zASIGGvb+3YYZshPYUvS06o2pj0uDlD46PN8ZH
	9VXTMvcL6ZFn/PnC1slvqyBdh80thC2AaLZeqJzocSs9paABC1AzHdV06m1lyM81ZEM
	R6dQ8YcIkJWVkxNREd1iTMLGdFGWWX7pZxWHpd1o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808f90448a-15eef7c1-b889-4c8a-9f1d-8b0eb02174f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ceb559ae9e9cb04a911cf83c54e03187fdb44226a18c7e81cfd2348edf3bdac0
Date: Wed, 4 May 2022 14:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651676038
