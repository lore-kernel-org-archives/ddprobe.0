Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B05B7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 04:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646885784;
	h=To:Subject:From:Message-Id:Date;
	bh=wjrs66F7LVkPTwSXYLTrUUMziyDNvSftxxkWKk/E9MA=;
	b=Lbk5DYrDD3JbG0mFMVFgbyM8xIrT0pDRA1QvsoAQd68OwRzCf05cqG/C1tmUBzkm
	cpEatcynhuBWFZWGFgfd1FOb3sbRQDEe3OInkNp9mG3uyb5npi4445h9HWA/YJ02sQK
	XYflAIbNk+QRRmDQ3PxjqHpkZQPb2hto4N/TEcvA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646885784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wjrs66F7LVkPTwSXYLTrUUMziyDNvSftxxkWKk/E9MA=;
	b=AzS8ScQynAoUsT/adwL64ZRXi5RV7lOaFrE3b7gfeqhFVs6jkG/HfgFdfqaL6F03
	KbhuFJ4u4BkM23ip+EOuX3V4iFylYi0Q/I+Dz/WlARh291Z14OgDCjg6VBbW2MTBIVM
	YGZrGTLjGaK1Yf5miZajyutZ9oWXJHI4RcIzHLYA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f720acce7-a1cd564f-554d-458a-8d05-fd2fd0183126-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc7ed4cb3eab3fecaafd2654510250236a62d4af32255e02412983b18a713778
Date: Thu, 10 Mar 2022 04:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646885784
