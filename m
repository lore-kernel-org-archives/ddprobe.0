Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F7497B
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 18:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645725685;
	h=To:Subject:From:Message-Id:Date;
	bh=ckrQwv945MkADl9Ddw+w/bYK8Heydij+8iRHubaPITA=;
	b=hs46wzZVxQV81WM8rWlo1Qx67a5ZBQL60/qje2qbXK6SiXG5PNSaUGq7Vpdju6FU
	ekVkVe29VZQPOnIjeYd4tRaPK0d6EAV5A+wFPvAtn+jBp3Y+G5M8/wDGaI0X4/wi63v
	obdq6+qBVXCHaoU2Z0NczEaZ9lfw06xxaeOr873U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645725685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ckrQwv945MkADl9Ddw+w/bYK8Heydij+8iRHubaPITA=;
	b=OdJ/s63O5lJFgih08JvbwK3p8LY848uc/GX9ESVrGZu2zhjWK0Yb7R5OVumrqwzu
	ostk+m655VfjPQxJ0LlgtfEq0TehOeln420wtj/j8z5sc8zoBNelFl+Gbi+luzlUfRO
	O/N66bNJhfYDIwhY5QB+u8Z2oTQH6zcRgKDzVpUA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2ce51445-ba16fe73-e57b-4ec7-86a7-554ed853093b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c9e3265765c37fd03b2f97ac2cde1ff2f70dd07cdd49cadb985200895fb76fb
Date: Thu, 24 Feb 2022 18:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645725684
