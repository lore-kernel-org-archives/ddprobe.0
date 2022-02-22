Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E8C7B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 16:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645547485;
	h=To:Subject:From:Message-Id:Date;
	bh=I/PtitsZJx0azWxHQynytSB3YJAEm7IPpXkC3g/ZtI8=;
	b=MaRUPz/TavFJkyar5TJLkhK0t2eiWB3sTOfTQLvA90oIM1fJfly1rwoZskugnvab
	EJbDN6WuOZFiQpq2xvSB1Pqcyf5wfV+Qppw0KBEkR3gA8L9lwS/zTHtRYWNedHbKL7d
	/+qIFX64bYukmBHTgwnFUNFG+C0/VLi9xhEt6rp4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645547485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I/PtitsZJx0azWxHQynytSB3YJAEm7IPpXkC3g/ZtI8=;
	b=V+2Ian13Jg2wKvV041reCS2GTcKulv911WghkJlJKZeZIJDpW1k3Ucz/MCCpNvc7
	NsCbr+rhBelcv5m/ySoPwEy4awedt716IIQwSa6jiM+XY1/UYhsmkLZqJP8k17NtrPo
	jH2ZFgmIltAV03YU3iZHn4ukyWDf2443CQaTE/hI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2245f658-b2b6c3c1-8593-401c-b0f0-6cc25c05a138-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f67ebf447c0a5b840b8068cf41775e222643fe49d9701cfb712db127ac1ed9e
Date: Tue, 22 Feb 2022 16:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645547484
