Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126B7363
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 07:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651735318;
	h=To:Subject:From:Message-Id:Date;
	bh=2nFrXP73KZGsP2jnXg8LO+zzk5AbMlxU449FbWN8rj4=;
	b=UJeUYOocu0GdXEEf8hIOsbMoilE5Ui/lU3KSEWlYLxPSuuXC8EU8rusNRFcKm6L8
	jro7Ytg4IvtIsiFvfN+8R26GTwIAef7MtDXYMZ7g+ZI42OQ8XHz8TDQrR8CG/Aj32op
	c3KV1kNjUe03YzOFQjh+9iZPlbJrEHsYv2g8zmpg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651735318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2nFrXP73KZGsP2jnXg8LO+zzk5AbMlxU449FbWN8rj4=;
	b=ICd0O7kfygftmmTFGm/AncR64Pzuyz/3cm/3Wn//MR/cUPNcrTwS9K8Abm9mhUIj
	2UNU+pGVV0yh8TcBY6JshMBxoTtBAA/6d5S/ql5pZOfcWVaEiQQ3kqXz6Ovr2IjZ/q3
	HTGzaUhfPjpEUg2Fjm1Mfko3H0xsKn6fXiUy3V04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809318cef0-253ad672-08e6-478d-88c4-a50fec84baa4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80110b138470cde4e47f3228e1a34520a30edb8289ef3f854df082160aababb8
Date: Thu, 5 May 2022 07:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651735318
