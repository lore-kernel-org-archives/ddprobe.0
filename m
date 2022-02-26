Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 974413D70
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 17:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645896385;
	h=To:Subject:From:Message-Id:Date;
	bh=W26yrSlatodJRqNRUm0RrW0EI9tEn5LxEupWSnGOBdg=;
	b=iDooRyFGWah9vC/CDzObppYqAAaNBv95iEdTt+w5y6qvO9XB44yLJsW3Qet8zrvU
	81Q19MTnWkUAKTtEwzrLRywCwT+hTlbt9aoedSQC5CADdoPMbdkkU8E8ytukvddev9g
	lH9q29lJd6g8B8xPIfwY/nNw1pmt/Q/eT9vKxsgM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645896385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W26yrSlatodJRqNRUm0RrW0EI9tEn5LxEupWSnGOBdg=;
	b=Qt5kTFPSFTFiuIMprBfOetgBqHO1ycLjhLcP7JoS1K94GcNnkn6oNdHOAeY8wHYX
	UxNitlDrPdv214fhozeLzH2tXQv6BrEaWiP2dtUCMnbsHiwFNlIsjjy7asRwQJVwxs7
	xBUWJi4HFrk0609Qlj66k5089j7iyUp0qwjQ2ywQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3711c15f-896a7618-a0a9-40ec-b093-ab881b502113-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: def09d459d92d700018ac45499a80c8867a07c9b77193a00b51a41745f88a8fe
Date: Sat, 26 Feb 2022 17:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645896384
