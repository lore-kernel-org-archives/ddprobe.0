Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EF515A2
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 02:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656902812;
	h=To:Subject:From:Message-Id:Date;
	bh=C9QC/J6Ml8Lvcu/XyaSeAyYrqpSK4zJBk1jKtB1GjOo=;
	b=aaYoTHU12FSrZKMG+IXIVxxiqSp8wuA7kcI2bXJJq0JiwTOmwV3TDDW505Y1rqhM
	jAGHMMcKbGlb42Des/19ztbb118WpY8PkL4c4dvBzo7nmxUGPI2URJvp0kFNdjuJ9+Z
	eG+UsENf2UlgI6MJXZ3tWF7p9CSV2M/W9ZacweOE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656902812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C9QC/J6Ml8Lvcu/XyaSeAyYrqpSK4zJBk1jKtB1GjOo=;
	b=TCyXBmFqRgX2KhB9dQ3Xr/4QqMUpn7pWzuvhJpNDXIjDlpNfRYCuzGBB2Lml9r82
	7/nxpAbQVp2JyUyw026bJp8n1AWrwkWC+WG3XRdIFunPlNEc/ACTQeeus6y3RvxLfqI
	iB60qiSJ0fPBhRcEJIqvR8oSsExqYZxl7VwUREbs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c71a8299-466af296-ccf1-4162-a3c9-13003319af93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04c0daa982caef0b9dc0f39936653fed6480b8c6c63829d9dcedf827250a563c
Date: Mon, 4 Jul 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656902812
