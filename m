Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12CF7A41
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 20:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650313018;
	h=To:Subject:From:Message-Id:Date;
	bh=VttTssPq84IPeQFQFwnQEo+io0yCPa/+RQ7clGgFHVY=;
	b=mcugEhJi1DqSXQAUp5bgTLdE8KUW22I0EzTzeGTp4+5dmO+lBEYkGyiLxtcyh8Jv
	9nAn1nPXnnefPSceHDk7C4qMI6lkWRoiWIODAZX19oNQZl+lq9bAhJV7sfcGqyNmcp3
	LaFRen3VcvznFaBBDg/GouDk+rYxWAsQAt3NO4cs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650313018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VttTssPq84IPeQFQFwnQEo+io0yCPa/+RQ7clGgFHVY=;
	b=P19quiwx+YytXnfk3BQEuEXVVK0X6odZdgR2BarTwZgS3qJY08J0nnBtEKZe1UAx
	nUfOpuzDwuzUVxGMY2sYDU8gFgghDd4Ijr1v2AKx5no8IS0AEkmvRHtGbLlTl2+EfII
	ZEvxLKuMOJbKMuwQlJy5M/GI/BzICWn1nn1kqc0M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803e523b9d-ab9bd615-b6e7-40c2-850b-58fd937d22d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc17cc47f973988e08ea461fbd4136257b898f107e562b2649ffb5eff66377e9
Date: Mon, 18 Apr 2022 20:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650313018
