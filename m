Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462D87A
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 19:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652814659;
	h=To:Subject:From:Message-Id:Date;
	bh=s31EnghFrdfxLonzYlz2LgGEbhY69cEIDM4aBaBCZhg=;
	b=aAmzZyKf8o6VdDKW5tlnwkTt+QZgb3cudzzj/CAMzh8xliQHkhL5AOF2ZYogcLtX
	dw7xhmaK4qkOGXV5AP2QcMaw3vh+RpNngL8Z0XWLWzekf9UePHbN35bquI2vj8jV1Pq
	BOOxBJ3clVxheRy9Pt2yuZAN9NfU7DeVCMhqN0WE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652814659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s31EnghFrdfxLonzYlz2LgGEbhY69cEIDM4aBaBCZhg=;
	b=HcCAkTOT3+JSqdHzPww8Q7pufvlmR+BqETlBiElVf14uvgpLTb/+TAV01+nrMv+c
	7zd17bWqsL/OTLl9ZaEV1/zeu+9zpEu2AdG4cu+ZA8XKLfT8+oacBwucAoCo1hNIYWi
	GsbX1ZcG9k6lxebyhhL1nwGGRXHcJlXrZOEnXQ5g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d36e3f06-65b51ccc-8c39-4d0b-b2bc-34c84e8066a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33e87b4dbc073fd29e884c3aaa407c7e8f0f7ac511c035bbdae1a54268f57dd4
Date: Tue, 17 May 2022 19:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652814659
