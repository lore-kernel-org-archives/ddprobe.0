Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E33ED1
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 13:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652706539;
	h=To:Subject:From:Message-Id:Date;
	bh=OUHzUyDvzlEAdeUqp45onzjL1sPnr/Fvayk/yujR6RI=;
	b=J93Hmid0d3p5jvRor5L+JjuoDnrOOhi5kQ4m5C9X2tCAjJWlZaZ0zdplhj6E7DMz
	ADtp4t473bZ2Thhvd+vyn/4MIl+bR3APKdO6ST7u6hdkxwL6fXJ3lIsCojrkROd+26H
	vY6cSO2Dm1YxQR6uY6qh3QBHskzFQvfYgUdGxBWc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652706539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OUHzUyDvzlEAdeUqp45onzjL1sPnr/Fvayk/yujR6RI=;
	b=eVjRd75dDZPa9S9jzR7X2tyiZEO2fVFATURLMULqwAH3yKx0jMVMR0QOWWu5eqpg
	go+ZMnhRXLU7mHiAPQ4TuiuyLKWblE39v3FC0YrzuhOcOR5FCWFbqruqRD0/b242vA/
	zBclWPwYXcUiriP5OiMoTaaQHP/qyKp9+iZMhoH4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ccfc76e7-7df17b23-f644-4870-b11b-30589159b725-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82c8a1b45449be9359193f6e361840823fcfa2e48b770840f53be271426f2196
Date: Mon, 16 May 2022 13:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652706539
