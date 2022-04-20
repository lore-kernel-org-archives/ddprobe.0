Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3FAE185B
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 15:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650469738;
	h=To:Subject:From:Message-Id:Date;
	bh=VWnrhQiIB79OlEG4ZOqHruBnqmMh5MzAhvSjyd21pC4=;
	b=kpMYUB+2t+t65nMue71SHxI/AWvFQNSc6ml9tb3Nvk/2dzvTL+MdqkPBXj350I7v
	YC85g/0ARbLv5rL0RZ4l9ZUgszw7Ojps5IVobLJ22WXLahFZZhByBgAuh3aWSVTewdu
	b7sX7kcAOJSxZUANxN2h/k7GCL4Dgl+FANR5EPYI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650469738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VWnrhQiIB79OlEG4ZOqHruBnqmMh5MzAhvSjyd21pC4=;
	b=Y81MmShepKQalG2RVSwYwzBZCOGeLV0MKzboswVb3slkNp/0d4DIJz5iKsq9smQw
	Bern1jIf4Hg/w5bUKo84DRhN9Z1s8v4NZ1evFCAgYO3PpKLSY2Z3ybHr/gnR2lgnw0Y
	iWXY/f3E5WoqfKUpG+GC3Yt7fmR5vyIukKpNoeQQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018047a996f2-1aeafda3-bc5f-44b8-ba73-56929ccc204a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d68c7c4755316287173b380adf13cbd9cb9ff0c4a6deee7b4b5e106451ce03e
Date: Wed, 20 Apr 2022 15:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650469738
