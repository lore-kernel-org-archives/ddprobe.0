Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0ACE3200
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 03:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645155985;
	h=To:Subject:From:Message-Id:Date;
	bh=TZQcZhZgxviUPD6lJiZelYV9n6yQBKBZDeJ6bLTvjYY=;
	b=EHybvsWds2kIVr71mpEbAenSkZ1kZGvgBHUfjyTzJkWNgn0fJ8WLJj4gIH6khk/q
	Cvck+rVGqn1wdKOo0iVm6AmekZu4H+nCXSYM7tm3w5NqbwkmgJZXfoyCGiB18DOOyIW
	sQ54CeWVaatquazXAjZoZniet2Mgxk1M3fHL8NGk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645155985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TZQcZhZgxviUPD6lJiZelYV9n6yQBKBZDeJ6bLTvjYY=;
	b=OzIlUVwHuJg7AC5F0rHCiGLlQa6D12QSBH8nXFHJJl7cFLxZ+uP99sOnbEgsfRMh
	YAJZ1BMb6DU698IO2y5boRdcf3GHdyXB+zKAKiQR9ozE6th9d9v2ayGARIVzJFLZvK3
	ka/WRQKJC4bpfBNRFHcq4zKaUs+oou4SWRHqn2nc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0af0255a-615caa42-0f72-4776-a9f9-f14e6d10a842-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df70fb4aeaca3a8d8bea92b341e4ea90b31c198f8d293327c9f80f1bebbc7996
Date: Fri, 18 Feb 2022 03:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645155984
