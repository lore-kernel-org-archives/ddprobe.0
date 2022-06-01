Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0D17E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 09:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654074659;
	h=To:Subject:From:Message-Id:Date;
	bh=7InDQ3qJOidm9XmuO5MjxPUanjgkBNBVNiPoVwPvPAc=;
	b=lEC+nWKQn6Fm5QvIK1GTnvIpKka2cgXq2qT3IfgIzlK18miPQWXT9p0xpa5a7zUe
	IqDMa63Hm8xQGbPEP1K4c9JHmzgj8ao5LiVnj3WHF1wrSnH2FWrXRtbRuT9DKbpfhp7
	hUiP7M6msR6bEef2whkjL8j4vyCiNGJPzglw4IIA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654074659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7InDQ3qJOidm9XmuO5MjxPUanjgkBNBVNiPoVwPvPAc=;
	b=cD7soe6eiolC1v1Z91vyE5SpvvkbsITdG69K8BEHW3datA9eCyNirfEadigXx/ti
	iXmfPnRMRdS4K+ySIplUYJmjIbp42trPUF6Nv7HuVVeeFt2WKBhZYGjoW+7AsObH2Kv
	GsGquzREf4ZkaAC+/KU7cPv7n2jjs1noqMAJleQk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811e885176-51428738-6980-4a53-bb4c-e321703d3c58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 029a4052f88dcc1a799fbe4cd8300176895066439ef327c35711fdbeb6d960d9
Date: Wed, 1 Jun 2022 09:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654074659
