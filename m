Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2297F
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 02:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652839199;
	h=To:Subject:From:Message-Id:Date;
	bh=YIV0LlOoV6f1gswyKCgWjPZIDEwr5XXwpL6AHXeE4Vk=;
	b=HCz1hZQp2kSyosBrzLnZNFCjxcrh7ZMAqynbF9VEzQBNMYrWpH7iR08p0ftag3U5
	eppnhIG6ommK0sXWN1UISoj26klB4FDrntfUAHXy7mFfkiM7WRrkWANVl1S/45lmIsH
	TeHS3BrvYlQ0J8qRGvy+SDsdd78ggjyB+0Bc3Ih0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652839199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YIV0LlOoV6f1gswyKCgWjPZIDEwr5XXwpL6AHXeE4Vk=;
	b=SBeKYMpzqH/WQq6hr5a+3qBobcsyFwO3tCyIBSSpqFkzLT762nQg7VQajX9qEcGN
	1X5KaMIDBfI4R11QAhRqu6xhYc4L0Uvapz4X9IUfxLq1+QkIGvOcFtajSTipkfRU73p
	z9WlFyzSya0l7/cZl6UxHtgVwzmRvV464q3oslkw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d4e4b263-7f4efb44-238a-4a69-bdbd-b6121b7a6a40-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9b8a2131d95c09c7427a8acff092d9b03e3df38fdb093251adfedcac622b51a
Date: Wed, 18 May 2022 01:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652839199
