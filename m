Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B36C2F4A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 21:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646514384;
	h=To:Subject:From:Message-Id:Date;
	bh=fEPxUaGTd4lKqs2e8CxgnFyrkglJ3ihhj3dfngPoZrk=;
	b=TnZ99kN9AGuyB/fMKmplbYW/W/YMudW6uIZmJVDwy/WpmxmaJR/0pWDKurXTYFF8
	nS16qY9G6DlX3nDnQuRvpVnhKncEQfiUdOO9Nv2I1dFoOM/9hFWfbHed41mE1QHADPH
	RtJ3x/NPos+09cy/Usk+VtUQ93ZaLXQvdw5dzaHU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646514384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fEPxUaGTd4lKqs2e8CxgnFyrkglJ3ihhj3dfngPoZrk=;
	b=S6RRaBpCy45cEecx02WEpXIyThOD89PjR3jlHCFiGpcpksfubGVr7fYgqnYWJx0w
	1illi2RoE9iWF+CaIBpsvLiFAz2VWL7SBcmsdMuSqDd20noQNslfbR/vHEACu4NaioK
	k3Z9YFaCTIrBNgddahIFIr2eA2rvKmn8yOAvWbE4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5be7afa3-1522b8df-4018-4abc-9293-23102a411fb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7650f2e303d03de62e8a670cabb1e3c063eb10fc1f892e187c22b4fb21258ec
Date: Sat, 5 Mar 2022 21:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646514384
