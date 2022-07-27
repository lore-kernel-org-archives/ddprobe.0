Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53412EC7
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658923852;
	h=To:Subject:From:Message-Id:Date;
	bh=W0Kp6vUZQmSN4mxIcMvGtPcKtUjNvVBvMwbzrm1CjSY=;
	b=NvUXRWfKHXBHTWCr5JsXnXT6UzLrCSjQkpltsx6rzszx/s1Bo80PpcDM7n3RkS8e
	o9FW2MolZrY2GLPDDcJhMe2UJlxcMK48HtrtyK6qaxu1Dc/KhYoyLYnYJ9NSbX5o4lL
	r3fAo3lcXvciUGFEu6nuNBj/XbHOljXHHVxHrd9o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658923852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W0Kp6vUZQmSN4mxIcMvGtPcKtUjNvVBvMwbzrm1CjSY=;
	b=foADpMvrqX/cOezjeknhi/NS3zCb0Qb84Nk8zn8Il+f3PBaupSPjptaRhS48Y9Hp
	88sFk7onCYZO1PfsRQIUYyysssFw8W0RxH61LcAGLjx+H4Ru1B0kNHW0KSjo8EYE5F7
	gUL+VxARuz81dwcq+Hgm7kOe10+d32TS5WvQWkfo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823f912313-5541ba18-d696-4c48-bb2d-17288bbcdbb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98ee4fbe81f01d332ce7e80373db329211be1d5662b20116bc5a4d8d6788f6ef
Date: Wed, 27 Jul 2022 12:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658923852
