Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69231622
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 03:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647918684;
	h=To:Subject:From:Message-Id:Date;
	bh=PyMbUcdIQ5Dd6M4oSe/JjnZeYvhh9hFsmeixtKimHpk=;
	b=B5p3vEXO4Wi6Dre/qXpfQoU+75JZF2VrGya+0EHWm/M9d6wfUOzYLFgFQWyBrlUJ
	YTg+KA4/f0XNQVAawkMrVeCwpsUcjpnZ7Lpj8QRlvkEIHl1lBeNePEjvrTuUHSOBWkn
	Sm0gKeglbiVU+GR/z63xiua/+83MYCd+sauAnODI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647918684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PyMbUcdIQ5Dd6M4oSe/JjnZeYvhh9hFsmeixtKimHpk=;
	b=guGFb/SCkGqHWGqFCbLfRqvI7FtBcnznCqcEm/fzwWSf+I0kbNfNFOefkrO7IeFn
	LoUBo03uehRuNPrADBU702xkxY+y1h/bbHPLxd9+SSqNX3YDbwNjLAsRa/HyjVpCent
	gRKke5XrUKJ/aJaGrgz09+D5YGWt403YSICuAPa8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faf9b9a3b-064f032e-54c6-42d1-b164-8bd337182fbd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4689f5f9417d393a2a067c05aefd8fa082c43162c3b06b1462e6d0451e0d7810
Date: Tue, 22 Mar 2022 03:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647918684
