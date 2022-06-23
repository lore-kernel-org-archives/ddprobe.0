Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04ED21360
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 00:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655944079;
	h=To:Subject:From:Message-Id:Date;
	bh=7hsmlvY+JnpvPqB5K2d0lcbAvASUtEeW4ROBpMpTnwc=;
	b=aBUrAkrA7hS52k+boNxcPc9QmtwC02pks8mZ98YCCJj/rk5KKvUag+ANGtNjb5bP
	2ygemXAQlwhfH0YYeh8N/n+xA9Gv+6QQWqEuCxXzmd+0johcjE1jrwOpuIy95yjYEOB
	sYHahg9Mai7sYY5Hf9SbuNu4APQHfupl6i/wpsVs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655944079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7hsmlvY+JnpvPqB5K2d0lcbAvASUtEeW4ROBpMpTnwc=;
	b=f6rgXFi4lkE/pM6w4CVefcwz2ic0C2JWtv65GfQ3iI0pNVwmUHOBA5C+lZBiFq0t
	lOY6nzphPABTT3Mux2K1BEtE3kAbTZn485Pxrz0QsHKcoxLqIrtWRiLnnX5dtUuAQ7L
	d0fMQy02xlccg2EnLPk/PnvOoh+KSUpEuhTx7G5E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818df567d2-57cd0729-887d-4787-bd2d-d67c30c75599-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b24402299446c3c530feec2dc91424f627c9fe810778e1fb0a9107a88af38da2
Date: Thu, 23 Jun 2022 00:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655944079
