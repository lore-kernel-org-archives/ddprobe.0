Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2831AA31
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 03:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654227359;
	h=To:Subject:From:Message-Id:Date;
	bh=GPynXGl3hBS7U6D7lNtjL1iqtrW8DJbO5yaCIGnFjFY=;
	b=Gm66j72dFnXxko6qWK+iRFSjVBXqydeoFjEmg0Dd/Ytspwfw9AqVW10Ik5F9n1Nh
	W37QHdR9DAhkwjWg8otf5VLxiocO08eSZS6mGcxYrUbysc2Q4ynUIBpPblvDRCLbJWu
	VcvVBkbkK8Vw9YrBm2CiPHR6c5ZZTi0EEuqnMfdk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654227359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GPynXGl3hBS7U6D7lNtjL1iqtrW8DJbO5yaCIGnFjFY=;
	b=VvLbHWtr3lWWJE9Qw2NkikEj4/4x+boJZVoUWNqNRz2otdkgnVNGs2p58UfsTo55
	zJkOgkF27rngTj90Y9/XnAxKJAyN8YibexjRCZR6mydNbfuXlWvldGDIetkoN+Yftnr
	l78UH2zXGEST+Er++JUxLx0D/Ejlv1fdigNBwfeU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018127a25627-e71860db-2ab9-48fd-a37c-e0f16452f5d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c0969a6b6baab77bfc9da58ae926b858a7a8a82d91f249084bd2bc6c2c71f5a
Date: Fri, 3 Jun 2022 03:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654227359
