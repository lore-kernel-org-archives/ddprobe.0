Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79DE32F52
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660918252;
	h=To:Subject:From:Message-Id:Date;
	bh=GJO5aa/AaSWB3ecjs/JdIfyLmx4G6pNJSkKeddxzFrw=;
	b=OfuTjpLbsl48emOSJ4cV44PWCDG5OOGFN19I8oNsDhk75Lw6RGhibwE+oWOUdoxy
	4wnZmKr6xRFa89jdyGzi5v34BbHiHuM6JSOqx9WuyiACFjHHAykemRobUNnhqG8no3I
	i73rym5cp9n1x195PA2E3EXS76mTOUPbpUUsWpVo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660918252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GJO5aa/AaSWB3ecjs/JdIfyLmx4G6pNJSkKeddxzFrw=;
	b=a7K6mpLUmHtlxTzVc7nWK7SU5XCFR60F5gJa1E4JxBdIvrBhHFYYPkW5kMoKYmlt
	lc7YE41AmYFwXPzO+klSnhreH3M83awzOW1Pd1MYCFXbrn105L9mvOzc7SO8tvw5u7P
	ZD2PZiiUnyU57GozXBAagcZmR4qAvPIadYv59GSk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b6714421-d85865f3-8151-495e-a9d8-40b7d5a0faa4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b65995f42732f068b69c1090b5d375e6312cb92c972a9ef8414d565cb76b64e
Date: Fri, 19 Aug 2022 14:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660918252
