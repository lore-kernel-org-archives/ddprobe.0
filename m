Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76697EA2
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 16:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657385812;
	h=To:Subject:From:Message-Id:Date;
	bh=A0oFYUxUFuORImjPw15h+MFZUIChNlYQ52BuIr9kDp8=;
	b=B07Z6x50oRGiYtdThvquov89Fx3kx3dE9N+9AMbkDt3WW4ApizJ0gRL1QZu55L0J
	b7B2PJO/G5SJLR2wjxPAEPDLcuOlKfrSGIz8bhboYQM2eDYsav/hB/JVv1bKteYQwnB
	uNST9Vq1IH2Hx9DiiUhvGYLzqJcdb3pqtU5bARyU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657385812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A0oFYUxUFuORImjPw15h+MFZUIChNlYQ52BuIr9kDp8=;
	b=hPupH4sMTngkQ1LkmxYsx8yfiKIl3KVevCkHa42S9IkkjmY+JDz17eXI5fLsaakS
	axQpckAaWxXlo0buYq/s8SEus8a0Doxa3F0j2sq1k+T67RIlYr4uX9D1V5owcHN3Dqy
	prBggELqwkw8/lrAH8s/BRK/CuXuAbhPx6KLvn2Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e3e48153-79139a52-37df-407c-b95b-3fc947ba8ef2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46ecf47429ee9bcc0b15bd35710a39e67e5bd4e870f5c4cf4998333e7588a263
Date: Sat, 9 Jul 2022 16:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657385812
