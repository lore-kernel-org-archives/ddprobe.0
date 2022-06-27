Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7437A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 05:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656306412;
	h=To:Subject:From:Message-Id:Date;
	bh=+xLXwSwNeiBreUUtawpjAKBy6U9xWHkgexZb01QV9XM=;
	b=RQYrTDZ53zgYLyMbnHr3JovL9CIpAUbhbKX2wKlC9UYw0mLKHbRYyKHzMX8pZVAD
	DkdqUF0ckkAnI90bvT86oeSRe99oHJuSNLwXu2M/7K0QXvKZWuNm3OIBwRCcO0hf/XN
	MiYuzwVT9RLK7f6PcOBQ6R3YUimFJo7RjfV7lcF0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656306412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+xLXwSwNeiBreUUtawpjAKBy6U9xWHkgexZb01QV9XM=;
	b=WQGT2XRtAAmhspdLEfzaICk2c7th0qVqnOh5S2UuljRMZx3cMrqaZMVW39PnIYdX
	rN4Uy/PIU2vWqj5TrRjMcPMRalYMSNfgVMvOJ6Rf4PO0OFi5AdrMi0jnE4PMlsvBrS0
	eTYPcuPpg0mrKIeJHCd3nA9dF8kPtYwinSM+f3Pw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a38e2b17-1d1429e2-c65f-43fb-987d-989b4aca21d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 234c006d66dead0842e95ed22d76c6e678ff0c88062cfced3379bb0d05ac685e
Date: Mon, 27 Jun 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656306412
