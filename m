Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145EC363
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 08:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652602019;
	h=To:Subject:From:Message-Id:Date;
	bh=P4koNhy+4Uh7ZkAJ1kc51c5KGpUCY9Bet5oYj8NwT3c=;
	b=TVwaIdiGMINyV6mOTG8T/n2BTcasuuegK0iAfnYj3vOh6cJJdxzj56FZabymDZp3
	/yiBH7zGFfZNJjIwFlm/dm569rVqHpF952roDOdC1dodtXDoiScYcte6Z2Cg1xb5LEz
	ET9Cfr4XLpGdxjIypIZTklAdxHdXJHavfnh7Z0eg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652602019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P4koNhy+4Uh7ZkAJ1kc51c5KGpUCY9Bet5oYj8NwT3c=;
	b=CYZaQNRGmfV+RpHfCdEHNWI8869GRU7rdNd/tgR2VF4ea1RkfvvXHdjB1GM+VJl8
	NsVWNa2GNHw5snvv6v0GEiV1juz8tszRFhKbFYNoeR/YxudnStaPqswTIUW0P6RSzsX
	6uCM2MB7+fKSt+Ydhv/Jneso+XwW4sjCGqTORCs8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c6c19e01-f0b0da37-c35a-423b-a4c5-9a90e7310a4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 526e7be6a95b97660fe89031a63e21e89ff966d772f19a5803d00c5080a06540
Date: Sun, 15 May 2022 08:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652602019
