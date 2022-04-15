Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3257E
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 13:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650030658;
	h=To:Subject:From:Message-Id:Date;
	bh=aXzJR+5yNTlszjLhjYfXK+vBBcqtosrRgaSTsR4XqTQ=;
	b=KwDDfDltK8x0S2F8pfkAyi0V/n10GT2PrqtobNQ5MfmiGo2rVa9t+pJtsCru+2hh
	nRmBaXx2ObdNpfa1m6A7pBoeiBK3126sXVZf3+/JNpA4PsUoybkzTHCQUT/2c+Hss/M
	H+p0d3OvVGK2FcZ6GO3Y1JNZcxU8m1j/8PD9sl4Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650030658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aXzJR+5yNTlszjLhjYfXK+vBBcqtosrRgaSTsR4XqTQ=;
	b=KzseBa6F1ihCNQ26s5IlChiwnN6BxcQ7K3zktMM/A37tcC69pnWRUuSK3rG/hate
	DCcUMfI6Ymbq6B0QeEi4WIjn9ZXRUxv+La9nGoz0D1r8TUq0Gz/7M/cWW9k1l/fESCE
	PyF2u3Q0Xe9OJHLhZuH5ckH2tAAvcdtEpCweLIn0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802d7dc2cd-dcb8f815-204d-4ecc-a534-ecbdfec97a5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75708f21325c274a35624c886b1b8f0b30d74bd151789e87d07ba6ec4778785f
Date: Fri, 15 Apr 2022 13:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650030658
