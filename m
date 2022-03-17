Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F54C3D79
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 09:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647510385;
	h=To:Subject:From:Message-Id:Date;
	bh=AKSc4BpI2pKrJ+ORej7UiYeZWndO/0GUk1QFbaQK9Ek=;
	b=FDREj4S0qd+3jjBismksBhB9zLzflihRwQ8n0K/eHUfF+C2KvHbO5n+ApuTxkogh
	l6tzkqD+6qkImLfDuv69+kmq95be9AFEAn7f94thVlzKD78EPn4/96JQQDylrjVFgO0
	g3+61RaRDq0nsfjSTMwZ7mGqXTyJWiZQ3I/3Ccpc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647510385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AKSc4BpI2pKrJ+ORej7UiYeZWndO/0GUk1QFbaQK9Ek=;
	b=WpGVk4jRcOSwHIx6ODfmSmUBl69zGIf8HtPffBNfc8E/pc/V1D1ATJYn5LRz81Jp
	U7SFZjGzsBOmscFjOcTZGkCAzxkdM3yYH3/bv6DVRnFo+xRxu/KGz8yxwmDZjG6nYZv
	kZBB+K1xs6js7ykH6I1LMy7SVxt3fwaFms+QGq0I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9745706c-e91c2617-8304-47d3-a488-b70af59398a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1577c22a53c82faa19a3a26f2d24eb45e06d5f6bb7e02541558770e94588d632
Date: Thu, 17 Mar 2022 09:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647510384
