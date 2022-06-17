Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF9D2F25
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 10:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655461499;
	h=To:Subject:From:Message-Id:Date;
	bh=T7a6HTyNyXfI5aQff+F7wA8x1kmiNc46+q5aleJHMAc=;
	b=MbxZ2conU0owPU7k/aaC9T3Gv1o5fhKBoq4RH7wZBFpDUu/uUyU0KgkTUj8nJbm7
	IYxX9v5W0nndaKiu9eHOCwOwmobyM1e6XRfHgWUe271ovZvSPVunJdskVTAam85T+27
	8mbjOZc/ozyMCBnMT13EODfjOgJTukE8/7qTpd9E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655461499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T7a6HTyNyXfI5aQff+F7wA8x1kmiNc46+q5aleJHMAc=;
	b=asoPrFZhAMDj1FnqR0kgYQSEbyI1xLv3nAi7BP+uXM1WgpOZQjIjZ8CSirkWtVak
	yqx+yrK3ZE8f7q8MCXQmUn0mlPQQ3rhBtymEvJv3H+Rdux9XAoYAiyBf+06Lu+dfv+v
	s3E0uxxVHPBGinJ3+DyxrJhE5V7ArMfjY+QECxvw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817131d1f1-6aba6ab5-0276-4dcf-aef4-e775d8b0580a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d668a29adbeab3523a5c7ca2417220e2a85a4b461085af5fc247b2b2ea2384fb
Date: Fri, 17 Jun 2022 10:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655461499
