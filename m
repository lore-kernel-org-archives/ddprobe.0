Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77627181
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 01:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645319185;
	h=To:Subject:From:Message-Id:Date;
	bh=hIj+S/WQChEQnxMTWXzx98otjIpgr0Tor4nW7KWY/hA=;
	b=XaSDmqa04MrSld8VmLT2zW32tWwSl6RS66/aGE7fgHKqADBnQ9OWNr8MHmdlw3SR
	neMvirS02jabV+DnEhLTpJFyQA3tJlXbVDjEA7jYiYhk9uXfzCrpinkaUHJpyse9vxx
	kt0QwypM/3zmYPYz+iS5CKwLj7wv9S+0VM1rjCjo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645319185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hIj+S/WQChEQnxMTWXzx98otjIpgr0Tor4nW7KWY/hA=;
	b=JHCh3NdY6kvmBIVmCs9+u2sgEsQRnRvdAEgaqbMn1GqbFPP+QEHwO7cjgZKxdK9l
	W8NApFpOOmSlr04gDuWP2M32AGP8EDVUXKWmnV5cn+/KoRziyL6z53bKGp5bKLlYFNe
	Bl6Jj9JIxieQPWbksy8xhXK0QA2TYoN+mIzs+KmA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f14aa61ef-3d7c3d83-ba8b-4d9e-b3ff-7f51fcc458ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93423115b1feb8e581d48d39aed02f824ad355c074eb0286202a3d73a984d5b2
Date: Sun, 20 Feb 2022 01:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645319184
