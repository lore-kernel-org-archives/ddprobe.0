Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED27F2100
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 09:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649323618;
	h=To:Subject:From:Message-Id:Date;
	bh=snpMqrl7ps+9py11nJ3Kk3X+vq+H50LV025Zt5NWqyw=;
	b=ABrPs/JGr3V2YAqXzb7dbdh0U8qJLCAtYNKtKGh80fqV7ROxEEd+B2td54594xal
	TbUjp3+UOmmg8eKjvyZpZ4EPz6IaKWIxibQy4nDips8YQWo/J5c11Y7IUJ2i1fIChuj
	fFMzNl5SQevyOIOHwx0kj+WIhhZdllj5AenKWlw8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649323618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=snpMqrl7ps+9py11nJ3Kk3X+vq+H50LV025Zt5NWqyw=;
	b=XMH/KM9qQyyMEmPfIZJ50GanEJbJZvaDeuvDwvZsfKR7ItLd4Tcb9r8z3VlIh1i3
	M8cWKHa5DkCf+0C9tKJgVMOD0IDI99P62vsphG7LfI9lTAkamSrM1i9+YJC4wu9sZ2H
	NoGtELukHRF9HvJiMbq0vyMpOdL3SBtsY1pmjxXM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018003592fde-ee3b0452-75f0-4693-a456-8763f18d4036-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc067fafa6963557795dc607f2f6413b117fccc8faa81a9037543a5a1657b696
Date: Thu, 7 Apr 2022 09:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649323618
