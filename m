Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CA32562
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 14:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655736059;
	h=To:Subject:From:Message-Id:Date;
	bh=GkMMPgDltqu42VoelGB0Y1eUP64UKtGE1+idltgxSkE=;
	b=MliDExONsS+tvW1uo7enua8SDIVuNaXMRtoOhSJY7az6g1NxgewymkhA+bZDSPQ+
	1CMhO8YCaf4uHOPUVXUeLiWkkx9v9KEnWz0GpI0W32A/i7s72BKKZcjvqTlDcC+2wgM
	mOwGtW++rvdaK1VflahdwtB3MyvMToszHHgM40OY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655736059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GkMMPgDltqu42VoelGB0Y1eUP64UKtGE1+idltgxSkE=;
	b=bWCCwDCaaSQ70U8D1uARCN+zYBSLb0aBZTDuu9E9mr64vZizNuCajGNVGB6XqYnU
	Wbw/PE988JUmkHS16YNeaxlhS+i2U6MKICaTsBSGERSKD48ckB0bWpW75GkBmoLrf/F
	j1LhJlIg+7wQxcWJ4ocFS1RC4/vjlRda/Tb90LZg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181818f4598-4ff63fb7-e5cd-4688-b83a-f8a335dc0484-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90d53fd5f137d331fc4859f2220348d36029e598eba828173e6a9c1abe86890b
Date: Mon, 20 Jun 2022 14:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655736059
