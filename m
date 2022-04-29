Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78D8F1851
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 18:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651255438;
	h=To:Subject:From:Message-Id:Date;
	bh=FtHTd8jVgXv1WXUY7IjgCFaL7dIwMpPuQZN9Hf/oLPs=;
	b=WJ74MdRHNaSrdsIz+maPrMhhnII+jGMn66ubNLTuhS3zCIlMsbO2FGSjNOo6mKKb
	R3M1T4Sh3ZsqPIsYc5C5shmh7cCJjgtG6dWw4Qp8D7Svi2rN/dsv+JLHlUN8wyogDIZ
	d/DC6qqcMnW9xfns56zwb71HPlN0AGuoY2Q8BrGo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651255438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FtHTd8jVgXv1WXUY7IjgCFaL7dIwMpPuQZN9Hf/oLPs=;
	b=JpGY3XpBL39ejFxxlKKvY6zXWPDJR//Vuccyfur+nlxfxk4My+K0iH0/Xd2Er84a
	ia1wzVEOfeF7uBKAtPZ75INvNgDIw+HcgJZUk83y0et9UhZSIfuA+MVkAOpksAQ9KyQ
	mZVgkE0wFzolsc1IMBfpn0DvxZM0ItLmUYs59SFk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180767e6bdb-f42618fd-f010-4cbd-b123-27b9eb5d63b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee8045e5118151e8d330e6e669877e974835bd27f2d116f56d834c8abe0f3fb5
Date: Fri, 29 Apr 2022 18:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651255438
