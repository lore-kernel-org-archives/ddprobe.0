Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED4841FA5
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 01:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658367412;
	h=To:Subject:From:Message-Id:Date;
	bh=NcW0R2X2nCUXEqG9n9m4aq9/i16Q37l6+gZPL20KpUQ=;
	b=KjyHhJVdtHAHnuH4DxoKMj9B5lPWFV5x99X4l9jw1RQfPrD8M9LS+UZSCS7Judw0
	3+kN/1dtle8cWv0Ffh3+vwxREIF9B9ragrUC9c2/PsphLX050hxpOPxABu7BhzuNYJm
	/qidHDHTzH6+MYxvZnLvRw2KQ3fMpq/CCdTC4koY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658367412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NcW0R2X2nCUXEqG9n9m4aq9/i16Q37l6+gZPL20KpUQ=;
	b=dFWS2BYSy3/flSjNfucsLc4DnUbGBmmH00LEpDcVyVowxMJxAyXv0JFSbh/edZ4z
	vTHcqe7PfZ70N16MCmeudcqIDTngcTcSfSvLg/niW43GXYAHhfqZvh3u1Gohnc/qsge
	013DXLaEXrPTYYTLYKvCqVu9e1HVxOtoVyhkx9+U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821e668816-8ec1e806-c09c-40d2-8f85-6c3f2645824c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85ff75faa2d4a27bff0a2276a0abe73cd6c534ce0490551d6d6fedd0ee4f10a6
Date: Thu, 21 Jul 2022 01:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658367412
