Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BB2C7C
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 05:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645939285;
	h=To:Subject:From:Message-Id:Date;
	bh=4MUuULEsDuQSODX3rk/aZ1eRSDj/NB+j2+EUNn0uoIY=;
	b=Z2MvAo6osZcB6W+/N6C6xfw/EQUeRAdAbgq+6Zc6OV5YilmW6K88NMj4REiutijc
	aWL7wQVrhdHLmOwhBXlkiyLQVP/LO185GzzW198Zn500R9kXca9kUXkMSrLeqgBJ8OD
	LeJ7MPLj0nU7Iic3xtPwaH/I9MNwhmViSF/UCizE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645939285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4MUuULEsDuQSODX3rk/aZ1eRSDj/NB+j2+EUNn0uoIY=;
	b=BCd5ODnLtBYR1+X0nAq/JK0/ypibTV8vMNlc/SlqZdEShQMwSxm6ryaoqYzV1ORC
	WsylNkaVQKiRq6C+ruCjrL0oK02DaQ0vPxfXn+CR0/7cYspHUz4r/eO3LKd+dSuoQAv
	2yzeP7gp60aV2sPLq2wpKyu9lFhcVNkBHIyznOUs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39a05b26-dbf377c5-76ad-4300-a219-598d0af882f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81ee35cf9fa225600e852842cd1b00927383f1f561928c219a70d59a4007ab70
Date: Sun, 27 Feb 2022 05:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645939284
