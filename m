Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3E0C10ED
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 05:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649656378;
	h=To:Subject:From:Message-Id:Date;
	bh=eH2IB5X9y7RkCG+GZiU7opY1qNxsDNi4tu7xrB0r8Ck=;
	b=gVjkj5Q/xX4q+Emjj/Y3kP6cemmJDqit3amlpnXdkOhkO9i4KpbbvBPJ9zNnLVXG
	ZL7kcDkoU4msF9AnMcw2YS2kc5+ApAbklLIhng/6fehPp2RvSR//lchzh0WhhphpO8D
	5qGbZY161i/XaZvlhe3oUxlVfZ5UKsGvt0ytDTmg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649656378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eH2IB5X9y7RkCG+GZiU7opY1qNxsDNi4tu7xrB0r8Ck=;
	b=fQf6gOC6H5pPaumd/OnhgGSGGwaoCnH/S1ja9LD2IuG31w77e5f31nEwMePxZVeO
	q0BQt+PHbtjx6ZO/M1GxJ9FmIf+8nCAcao9ila11ncmQp1QVU4TTI4XODecuohe9GBp
	e+hnXGrcVVegNo9P67SVAsHbO6NeOZOluq/CpZTY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180172eb372-86e18165-4ade-4ba5-94ba-70fbb99c7e87-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38a38549582816f259930eb9f5ad4447bcce159501fe9eb6df21548c11ecb069
Date: Mon, 11 Apr 2022 05:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649656378
