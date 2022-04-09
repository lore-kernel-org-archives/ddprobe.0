Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F253B7E3
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 06:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649485138;
	h=To:Subject:From:Message-Id:Date;
	bh=aEtcYKP++oLJ4tBT6yCFD3L7ZhuU62gXiAuZQSD2GGY=;
	b=DgUvEhLdjEkVegVfUoMixQ+Qxbqw3yVCXSzaB9ZdBNwq705p3Gpt7b94X+5FAsYZ
	C3ELXfdMbuZKLqSCBiC7XF+a7vkHSP43CZysZkYhAU3dh9WSqLeUasGF92HIR2PqsD9
	At50fWzdFWO8/hB4Ra9r+QaQQxDoMIPZ/8GQU3F8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649485138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aEtcYKP++oLJ4tBT6yCFD3L7ZhuU62gXiAuZQSD2GGY=;
	b=Hq8/FALvmQEc2WGd+fEyWFXAHMu3AIMYBVN1fAUZr8Ex8bBPImZx2JUmVH/Fassy
	A5QAD8fIn8PoY9/8VECvMyDQxW88Z2kUx6vI3jivD8mriRdf16JACX2Zs4j+0n6pi0s
	TQrNyUIYHfa8bJue9UT1bZSRVwcn7lemtWTR/o6I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800cf9c97b-0b449027-418b-4f58-9575-606bf5b27a0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a39caf9d659b4a1f6075e5cc34dac0d45e891984ba741984ace5bee695193f19
Date: Sat, 9 Apr 2022 06:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649485138
