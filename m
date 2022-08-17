Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9723C26
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660731052;
	h=To:Subject:From:Message-Id:Date;
	bh=uIpEnuYKk+SKUw6ESHtyuSKj5GGG9uHGEGIyX7czBmQ=;
	b=fpXRiP5zxgkA6H50oYb0v0gk0YwKc0Wqcz2G7h/gP13uUefpLDJQxUtjGp3Z/pXE
	pPNngzAdEWF5PL9BELQ/kbs3YGs5peakFs4HAKkbJIYBcwnTjasmKNGS4m/pimHqSFy
	Jb7dEwT78GYO6SRiDC5meU5A9dR2jiQaVX8iUUF4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660731052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uIpEnuYKk+SKUw6ESHtyuSKj5GGG9uHGEGIyX7czBmQ=;
	b=JmuG5su1in7uv3rGGWwHuk7K6hsMdFJAiW9QW0hNDeM5ob0iyemr9W6o81symkvw
	lIWMDAkSU1Kb8IRQfZnzMob14lcntmPDKsQ4trZYwCHusVxoPdTO0tsJDW9yrMVzh0L
	XMu2N/MzjnSi933cIwcTCbQAwHCwYe7uwW6aLSf0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ab48d1fd-c7790971-f8c3-49d9-a0e8-79332f0063ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c02d4a9d08640cac1d9bb49325bd135518b57ef5f9c8f3dcee828a5026ed3050
Date: Wed, 17 Aug 2022 10:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660731052
