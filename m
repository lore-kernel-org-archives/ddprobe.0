Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6225918D
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 00:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649206258;
	h=To:Subject:From:Message-Id:Date;
	bh=8x4WNfW5waRcrEQ7nNMOn5Kj/Av3mZi0NVtASoW37r4=;
	b=bMa/LeHhtysYNRBhMBqH+y5PaIeEG4ZMhnJcBy+8zy9baZELxwjUbuZq99nxIVjx
	0lFszRpngwiBV0+QmiFGvhcRl3M3zqDCebLWSSqioUrglNJUhSzpiPXrZ7WZorLWRUr
	MQJNNR0DqGhlgAGG1B7r8Ey9lZzb4mBAda9iWTBw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649206258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8x4WNfW5waRcrEQ7nNMOn5Kj/Av3mZi0NVtASoW37r4=;
	b=AKoW4RPNYaikh/lW9n8stRvh1i6O76t9Y2L233RTgrpwmxhI/BSkVFHECTGLoUap
	Rpmv8mlKi4km6Jd+x4FBb9+f+7dPehTBwv6ogLjbdofzKAS+vFpvRaB8i7j6mkKtslm
	9s+/Vazsei5pBuBnOGXp16/49JpzxJpXrXwlNZ8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffc5a6a72-5b40f959-1a59-4eb4-ba87-26e900d64c63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0fea57f712cc1c953ba50ba93212c817bf6ea62c81e34ef586d259cc2b840c9b
Date: Wed, 6 Apr 2022 00:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649206258
