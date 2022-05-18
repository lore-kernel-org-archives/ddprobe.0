Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397A87F
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 09:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652866739;
	h=To:Subject:From:Message-Id:Date;
	bh=UTARto0LupBmSq0trqE5TzdD8hKDWrCWmirUGKWdtcw=;
	b=JYIKLaZ8GB5xejVAbX8zPlo2EQqJBvZR6QArYXX/4gqOLGC6iVb0NmrcsBUtjNmA
	vqHY8XMtBAkEbEJ+NW5RU2g+i1N/fXLHX9+0pXZqq+u0zKWDwKVDD/fqJ+kbnV5aoMF
	4ngYFFMiGnMo+YTQCLISH5e4LNCOzEzWeKZvRjzo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652866739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UTARto0LupBmSq0trqE5TzdD8hKDWrCWmirUGKWdtcw=;
	b=P11waBrgTN/GXqx81xPimeyZkLVcBSTosgUuWqkmQ2Ju3TNuT28OvjjuA3EwHn/z
	rqcLSuLgQoPmFHzZ5LheSQ/mKVGwOpb0KiJkOTyj6LtrLzH+1W4E4X1zvk+5ZIJxlJZ
	wH6VCrpsREOnrqNI38RQa71XSsBuGPcW+nqLHgCY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d688ec5f-d8ba48be-5cf1-4b66-83f6-70f399d694a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 274607aa020898a3c977234948a00d97e265772589a38e8b5224414610edc608
Date: Wed, 18 May 2022 09:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652866739
