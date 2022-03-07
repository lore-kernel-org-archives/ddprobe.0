Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDE47A
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646657784;
	h=To:Subject:From:Message-Id:Date;
	bh=iOJt31RMXlsGVv0iwWN92nk0h6PnQ573DdAzshABOFA=;
	b=cs0wkWQ1QjcflhzO4UeLMuevswOF+NApsEaNuogX65vOyq6t5o3fW8eKHUUgDMIZ
	XBRKyvE995yy8W1Vg/SX1BS9IzMDxy246vmdmrdvd+DBRAQocA0pWUdmjcwXvs0QEXK
	Zvj/oEVZZPVlo8qr0bW8XT43jveQtenQpz1EXHdM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646657784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iOJt31RMXlsGVv0iwWN92nk0h6PnQ573DdAzshABOFA=;
	b=ZUm7yqpZsNuUnpQTgzIJHWVLkmXjh0Z2DtdK0WbXtQ7++ZziBvzXIusYogL7+sdK
	0OxATIif9HZA3P9p5t0wqExJJow9BQl2vkb4wgkTcgoPOFGxLxzjfa3dyWVi49jPzIH
	mr6IWfl7KUxQbnCP4UngQc+2JnP2A5Yhj2T2w4r8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6473cb8c-9b5e5b1a-1815-4dbe-87a5-3481921a8f95-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35435822c94dc6c44f5e0cf307c52db0b3bfda88767977abc7f0ea34b4b2bfdb
Date: Mon, 7 Mar 2022 12:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646657784
