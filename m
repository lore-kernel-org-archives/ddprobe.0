Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137717C
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 11:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653477959;
	h=To:Subject:From:Message-Id:Date;
	bh=nDCbmt6rRvfSMqSZeS5HJRU8q1XLipzXNhDF73soXRA=;
	b=NXZ7ojVcQSVyCTeWyha7HhreX3Gtu5c9NplKGJ126leQbfy5Hg53+jb3e/8FXW3a
	Mw9pK3St3kxFW0WlsUVOQjK0KEe2Qzn6Nvs3ppf7OZUhcDwaYsPhguEP+n4CkOiq44S
	c2Ef8VuFw45qRIhsTeokHOsueTwSy64YhTk0kfZQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653477959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nDCbmt6rRvfSMqSZeS5HJRU8q1XLipzXNhDF73soXRA=;
	b=N8onOupli+zX63iQrLixvEiQ5sNzEPzTYjmw+bWIxJRv5Jicy4Ym8LEVfREiQ89d
	gSvNd/n60qdf1I1nWoZSTqhEaWk34DFHSc61xJmNEv0eeuNjS5Ie3Lu9rRObXhFkGOo
	i39Mp+zaLebsgr00tEJCdNCwdeUP5Ur2Z96DVhmQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180faf7667d-1d44025f-316d-4b86-aa12-08140f9da059-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 308dfe8940f965ffa9f2174dd5e3ce69763b9f8616347a1c477ac83d7d4e9e71
Date: Wed, 25 May 2022 11:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653477959
