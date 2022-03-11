Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99F833D5
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 13:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647004585;
	h=To:Subject:From:Message-Id:Date;
	bh=Dg1f0aUVqTUzDq5wx1MVuKmH8/8NcAz7SrPcZG1+uHM=;
	b=OfPxYEDhlFJ34cgNCOMKMEDWsjEdLXVpPYtGcJcyEL8kJ1goOTFTJ5YTyWnRBIug
	w2Ukg8LThsG34SByeaFqtqp/mqbf8KCD8hVJ0ENiqh2WcHmX+yzoAbrp528scW3/lT3
	EUxHBFHhlv/0we4a41ZoBO90VbXwi4dBa2WFIwvI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647004585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dg1f0aUVqTUzDq5wx1MVuKmH8/8NcAz7SrPcZG1+uHM=;
	b=juqeDBnsUKQ36KWrBMr1+aNX4//MAzFoW7uoevvUwfRHeoXB9+QQMyadj+HhJRka
	uzIF5at7eXctgVuou51GvYP+z3vW9kTJPPfKBSIQpLxWzyx9O+acQKYVrgh+FZDXeXv
	iz+4sB5mhhe5Sg/Gz9IRB4QILW/hyC4ZLXG2YNRE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f791f8b09-bbfe236c-28d0-4be5-97fc-0f6a5fa4f401-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c45b245a8096aa5dbeb044766e478bc9515d14b76051132875bf90ef9cf75a7
Date: Fri, 11 Mar 2022 13:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647004584
