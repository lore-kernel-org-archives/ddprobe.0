Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E22ED362
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 07:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657178812;
	h=To:Subject:From:Message-Id:Date;
	bh=kTwgUDjzogSMfXE3VA1AsBVf687XC5lB3VC7fb6WMkM=;
	b=VUbDM/hqST6bEJrU5cYVYXNs/EPY04PNAqZeG9ls7Zc/X2zKztE+mRywDVHY43sa
	zUjHl3iTGsx+WvaeMzgICBrEMCt7omTltL1ZjQ5enMCF7f44fmGtl1zuk+wsuEHt1pV
	Gmm7OKZwf6PZ3gKezPr1aapw39XhNN8sTLE4uXHw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657178812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kTwgUDjzogSMfXE3VA1AsBVf687XC5lB3VC7fb6WMkM=;
	b=eZpuNh3jRhnSjl1uTSguZhKG53TsBqphizocwNMv7suCXErb6ZkDgUkxucFcHhtS
	tEI1/K2dvMe+TSHNpygIOv81kALeif4QiwFoSC6g5CPa171ZLhUR/j+KBlhwc7m3AOt
	I9vOWGpjUpFAf/K/Fh75fYCELqLWECP+tfhWWptY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d78def91-d090efdc-305f-4ef0-8f6e-6761fe147814-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86aaf114b7c96fec38bbd43a2a67c898c10bd235ef4d2e0b55c22a281fda8e9f
Date: Thu, 7 Jul 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657178812
