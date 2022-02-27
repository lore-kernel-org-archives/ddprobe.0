Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 903FC2F29
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 08:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645950985;
	h=To:Subject:From:Message-Id:Date;
	bh=53Ju1403bcjxtN9TZrDI7WLdu+HXRImXIWnAQYzJhAM=;
	b=iySvlPOLuqxmmlUTZw1YgS8tozExVVXNjJF6zAM+6W4GR9lnRJ1mfJ1YreDp4bp6
	catcMF7bS1z3Zd/vhAjVlWYfFQzZbx5xnUA3T6enxDwMbD8rYjOysEgv20rjKNXwkwL
	dFB8qX83jpVFZDnikUdSDF/uXCLO/ZIAWFN7l30I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645950985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=53Ju1403bcjxtN9TZrDI7WLdu+HXRImXIWnAQYzJhAM=;
	b=AFLl5k36WGBCqXEa7Q97do/whhGOrXPjTu4U0RdXf2dBgNF7l2Y1Z9mtIuBBG/EH
	6+0/AUJQ99bCWetVMXL4AdsRBY7FO8DHRWzGvhZlXZz2GBPNQGpOp7HQcDhMwWg4q5F
	oi/J9+GhCUgfzMHbL4vccaoJCvMN7bYY8hoyQaeo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a52e208-68f10b0f-4579-4839-9986-9d2290d8a88a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5cb26e8bd6edb09430a795ba6823bba887a8fa1ce13e7a0a6ec216428326df64
Date: Sun, 27 Feb 2022 08:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645950984
