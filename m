Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A0F33C1
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 11:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657625812;
	h=To:Subject:From:Message-Id:Date;
	bh=CRcAnlYj62oBl67X+2GWEaCSfaGhzB53d2SCfUpaDwM=;
	b=PDzS4KH659ib6dFRW+KLSxypPuyaPKWHxw5gaZsqjz8KoJYqZF94KTfF+HoIUqDR
	cplm4N6MMZrFBnYfuhZkF3lpDu9Um9+sBeBW6I83AO45w458khdYk+j0jjhd0HzWIhz
	PlEoIULjICqDmHEO3DpZk8XN/MPAlN/JfiLlvsVQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657625812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CRcAnlYj62oBl67X+2GWEaCSfaGhzB53d2SCfUpaDwM=;
	b=ZCLUQrO+lSVfngwVtniYNOcOU9ywLrLxX5vPwiMnZpumVmQ4Z7H57ASXB7zNMKXF
	pggX2XFjZV3s6PsY3sq0Bus3zL3q0810UZKWLe90qx/x4KMdIR7Y0mtg8abRQxFSXva
	l6Ab5ZBdxUlm4QZDCNCADgGS4NoP3j/IWfel3/7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f2329d7f-f3ddcf0a-2ce8-47f1-aa1f-e3951619eeca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b17567078a6e9c6669145e32a2b6e18212ce53a48274dc96cdfe871ed54ee8d1
Date: Tue, 12 Jul 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657625812
