Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53776AAC
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 23:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646436985;
	h=To:Subject:From:Message-Id:Date;
	bh=FLzkgbQ1Fq4U4EuoD7bypM01V42aXU7ZozzFLQrBHR0=;
	b=GbEYKyLNcTzDTKN8Lmos47JKp8kQ2csBYNZ67ZhgZwcBBkTFliMcUJ/3jx77sXgd
	K1klSuUKzb64WumpC3sxn0aJi+71NY0dC6AKEeA2AssjTAcqYaQ6PwK+k3DQZNBSVtx
	6DeS4R58mDCK6h84+I1/9AUG7QTWoQf2JKGJbdmk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646436985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FLzkgbQ1Fq4U4EuoD7bypM01V42aXU7ZozzFLQrBHR0=;
	b=l30cy2KtUAUrMiokDxBXlwCaw7WVT2elgN6a/ziUQqPSJ8DGPrJsMZpS+JoujP+/
	ZcJSWQo4YgpZUlV3YPAOFtMz+cJWPFkFTXJJAuO/rrwBBKX6GoSwFdAsKLgFhBWDp/x
	SIWA2MjcU4+Iz+KRmwbs+UpxPQcX/WFf9Bs72il8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f574aa7e9-18d6b587-530a-4f0d-9df5-c9b9c6bc9af4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6f3291da02f4f0f58c5ce1a7f8c56692c1dfa7b1e6d74664a3ba48723dfa6d3
Date: Fri, 4 Mar 2022 23:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646436984
