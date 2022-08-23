Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF958ECF
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661250053;
	h=To:Subject:From:Message-Id:Date;
	bh=SNo/xbzTArqPrwXS5KDGogcpyE+ATJ2ZPqvDeZaE1nE=;
	b=kisM1ICPHausDzywG69YXgwoCZ+Vf2PYJ7U//QeI/oDJG2y7tmCjpmrF6KaIOKEc
	DQ2b/DkpJJH4oBPb97i4oaj789lbWIRuA1HKOQp0oTTNHg/YCmRku2NQaSQQN3o9/lo
	e/tUWbGVKZupJGn2qTpWlwhuPB2z8in8tqgrSsRU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661250053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SNo/xbzTArqPrwXS5KDGogcpyE+ATJ2ZPqvDeZaE1nE=;
	b=FKYAGCPbBNo29fs54QDTFPC6KI3zm5Vj8ykyfjVTwY42CT5Hc1ehsIJMxG2qRjmx
	ES941o7ocWqDPhTdROXhdzZTSVrxTEGvuAeU3bHjMgGAk81JqKD2Lutqhrry31vg5N0
	cgiVu+gLf4ONKUv1+Be/GAK35ugc4jfZx9PVE0nY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ca382232-506f3d90-922a-4178-a8e6-44d67f422fed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ccae47f4f7da6cefc84e5446e738d789df3690cf94e8207fc9ec9e96f6a2bb8
Date: Tue, 23 Aug 2022 10:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661250052
