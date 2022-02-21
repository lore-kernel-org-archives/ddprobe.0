Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97AD533C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 17:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645465585;
	h=To:Subject:From:Message-Id:Date;
	bh=gGposNvFhAqBvzyQa3dj6k5XRuZuCfS6tuqMqFcGu2E=;
	b=NQcf49kbUj8iJI2oU48dU7VNlJXMALGm/n97zqu9hr2WiQgtYF2zpNCVgZPGUBHK
	lGFqqOlT9KwACNTf5lIyendKezOJ1rfpI85v1fhT21wpvYVyAzHM5ZIRrN27mxr0WkE
	SQUhxQTxFl2uLpnnxGxGYxn3V41IeY1ASLDf3SLk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645465585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gGposNvFhAqBvzyQa3dj6k5XRuZuCfS6tuqMqFcGu2E=;
	b=F7q3EQn+XvVi4KxVvMN4+sZzhjM3xXaKtB45d+/ZNUlSRmwobt035KKFYVjqfbCd
	7FY39T+oxsG3EjwM7cILA23eNpj5lNHB21pO8hFlsewSLhyn9mSRyvcDxoAuEVIBvVi
	InWR86Crv5gXJMI5w9gaaSionxg9LJ6v7TdiGIoY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1d6444c7-4aab11c8-f87b-414b-b7e7-47618e181734-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 822d13c723ddc621ec17d798c15f070dfdbe12bf9b5bef0c7fb8189230a6ebf4
Date: Mon, 21 Feb 2022 17:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645465584
