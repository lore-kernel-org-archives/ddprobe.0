Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D36B15B9
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 08:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652257199;
	h=To:Subject:From:Message-Id:Date;
	bh=18FdalreOOeSSQ9qdzXbVGC9zjYhA3m7epXcLCuOCwI=;
	b=NZXRYcHep3ReuvylEboxhFVsBUU9m+OIaWomY9PYp+DP+mmB93AK466eGhwex7D5
	20Fr6BrHzNVYzQqbDXGY3XgqCu4WJoLNmbg/P12Gl3FYdP4/k1lVvD/F95tqOjfmz/f
	ePbkvuMIgP7QLcULa/ABFgHW4vYM9/YcbZiN4hHg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652257199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=18FdalreOOeSSQ9qdzXbVGC9zjYhA3m7epXcLCuOCwI=;
	b=bTmOkwKnUG9Bbe8pp62CZ0Nt1zPeNbZ5Cl7mj9LXupupIsK+oN3q/zXdBqJzAR4E
	3PWsk5uTpOn1adIvN93QKpo/9FKDcqe86V2gmVuh39GE4+yXztfdlZBDskVtBeYcdMr
	47ZG855pskg/Byxseogvuk2mp2YabTuQKM/G2kbo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b23414a3-8c51215e-33dc-4db0-b0c1-53868708c4ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 286bb6c1190d07e77a9ce7722954795e589b1196a37caf07fdf76e07daea3379
Date: Wed, 11 May 2022 08:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652257199
