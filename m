Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0328933F8
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 13:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657719412;
	h=To:Subject:From:Message-Id:Date;
	bh=ZnAaHz1oXmcxNhPdvxkoQQnV2EOUJZfiIs34Grs4oiE=;
	b=CZXbkCBLF5qN/ldlyJD/C7MgQA0K4fgIfHmAQgQApWqy7OiaJXDhKRHZ2CGBJXOR
	D349WTEw8tp7ik2RtHC3sUWmcBSrHtbO8Lyw4QBxyd+xV5NdoJST2Ax1zZA3yew/1YC
	OgSHKwf/Atel4M9THXhcinu88jWFUXeaCA3yXNqw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657719412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZnAaHz1oXmcxNhPdvxkoQQnV2EOUJZfiIs34Grs4oiE=;
	b=AD/Ppr5XWc2L0Pmn/U1ifrAkNW8Ai0Di+o/x7yBBKWg+z4JtxPiJHOFrVVOLAn6M
	LhYqeSiYnlrYBmkOdBDgg1kUIGeQELG92hkB1LknWqdqaL7mXE30SVVkadUbNr8ztna
	N37hKZSznjq7GCz9u8Xf3+NoCVFgCeXQmp7zDQNk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f7c6d63b-aa92bad0-da80-426e-bb26-18c238e9eede-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c47dbce357290a96dc06e52901368e1b95fa9e6508dc09b925683d434843138
Date: Wed, 13 Jul 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657719412
