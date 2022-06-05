Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A0DD7E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 05:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654407179;
	h=To:Subject:From:Message-Id:Date;
	bh=P6oTfiQJc141Oyvwh4jlj19kBS8+WBvbrt9mJlkAQOw=;
	b=J/L/Og17EA0LUAt4MccMI3SmdMyH4Ga3ffGREKqFqwqVCFkHnKyx6VgPQ2D9ez0G
	au/gV/l9e84aYxfnMUXn7BZ8jU8IGf0IUeY9obenBo0GbSJffJJdC1YZVcqB99+Rcf6
	+GzB68+MCqATSUOzNbM6Qe/l7+qx2iHzvYY63F58=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654407179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P6oTfiQJc141Oyvwh4jlj19kBS8+WBvbrt9mJlkAQOw=;
	b=YgugfCzveRkrwb/abdmkNnKdeRV4ltgdzpxEYz9vr8jZcD6EFvlZOVj2W+mSgtTh
	+jI1lnM9UWX9++0FcUZUh6zL1B+ogPUmWXTvuJFHOhapfG03owxlwJypA7zN57/KD+r
	LsVrSRJv3hjTZXF5MqOeCGq8z/lK9fj2sHdZ9a+k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181325a2c3d-1fdc45c9-1423-4b09-af92-82de559ee953-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63309091dc0ae443276e17eba1286625e1a26c95166c8f9d88ccd34e53bbd744
Date: Sun, 5 Jun 2022 05:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654407179
