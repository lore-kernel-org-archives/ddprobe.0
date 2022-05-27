Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3D77F
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 16:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653669779;
	h=To:Subject:From:Message-Id:Date;
	bh=VmvSQyyBUxuSobtPrQ0t+xWM1n6myz5g8jOv4bSiYlc=;
	b=PVqCa6QSO1i67nCzr6wn7Yfvf5AZ3cEHGeuVac/wFmG3KrNhxeH4auzEeCnPZ1HP
	UTRyK9m6HCXqw4s0u7ZHBY4ibxFo4HnZsXIxpRtSiDrfnGVQS4jFQEsTq4ZGrue3EnD
	90hkZyO3hn7Gs54xLx0MEu6APw9DRsSRWuM+Apyo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653669779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VmvSQyyBUxuSobtPrQ0t+xWM1n6myz5g8jOv4bSiYlc=;
	b=f1INibI6AzaaYzY96pcPznbo5ZEW1JQaUd6mqxYXSsRiz5yWgV1zuB3Xl4HWHpgw
	L9JZGch0pHcI/5qRi23W6wGOtkzPW2l8YscDAmaj5byp4NjHT41JffWOGYEM0AfIkjf
	tXY3fXTqfPYmzYrWMzMYHrLS3SCxXxB/LlyEKZ+k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018106665756-e60f1600-5a92-4e68-851a-34417dbf8c37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7e7eb5c886f3785afb7581ba94ba3deceff59c19d7b93a1d2c98b24a6447339
Date: Fri, 27 May 2022 16:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653669779
