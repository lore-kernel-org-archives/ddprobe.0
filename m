Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6104D42BD
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 20:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647979584;
	h=To:Subject:From:Message-Id:Date;
	bh=8A9N80GA9v+TxOVPBGSyIv+Yf70BPuV8Y9mpADE+Nuw=;
	b=aac/zKRR5e6REvkxiQ3a3n0WoVwvsHcBuZKwrPiAIMA28XuwLZukzXQp1rneGHL1
	rmO0OQlfYfnbZVliWUb7wZbzhuSJcQgbGe7hJK9aFjdAmTUN39fqbQGmGZyNfVjYtd1
	A+QDB3WZEAEXc8mb5EPaAeVIFfUrgKV03GA4d8uE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647979584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8A9N80GA9v+TxOVPBGSyIv+Yf70BPuV8Y9mpADE+Nuw=;
	b=ClywO/WUl0UDRe35ydQFbTko1l/jnc1z6HHJQ957/1puqs50wCqcvCW0rzEgopDc
	yoFWSnQAzyBfwd0B8hL70mZnHSw+eUPtIhv+YNRJDlA9Vy8cr2KlofTvYu0cVViHfAe
	6Qi6RO/ie9uQDHM/CmkNE610go1dz6Y/qmQqvaJA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb33cdd05-944cb4e1-8892-475b-a082-97154f22ad01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 968bc450b9f4baa0fabeb9d511bb26472e9d597e6b8eb092deb303b0be82699d
Date: Tue, 22 Mar 2022 20:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647979584
