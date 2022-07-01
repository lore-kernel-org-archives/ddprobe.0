Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0341855
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 10:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656670012;
	h=To:Subject:From:Message-Id:Date;
	bh=zken3KFCNjC12Qwdzz+ZS0jOnEhfwQGeTtwpHpxvgFA=;
	b=JXUuZe+svpzq7a0y+V1At/g7WEBd8d9M/hDZwTRApZgnwrm0+uNwSDEq9Dwes0oG
	m+FfiMkUNZnYRlpBYOC3/gx6364cHghLDWtT0LboD7I4+c1oNy27bHkLue1nO+flWkJ
	BSGBYCebZtO6bmS/r97KTiWUiFKstfNbiOp2UJbw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656670012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zken3KFCNjC12Qwdzz+ZS0jOnEhfwQGeTtwpHpxvgFA=;
	b=MxQmbLKnz2qlMXRmabb4csTfxcT17bQ2slBptJqTU0vURk7D5tVvbqngnssUh2iT
	NF8QoNWXq37Lgjc5QkRLQdaJjT2948nfGNtNgNZdXyK7uoCFNO87yOgEUiK3Rek2PwY
	DRgMuOuwZXZIE2FNMk8w4WB/XL7XBKLfOJwR2xX8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b93a4378-175313b2-a423-4f5d-a5f3-32c99f074749-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1de14273786048f299b09ffa88eb0a234851608b70c4b016d8eff8e09119dd5d
Date: Fri, 1 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656670012
