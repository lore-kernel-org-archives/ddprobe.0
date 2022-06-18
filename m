Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249E77B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 12:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655554079;
	h=To:Subject:From:Message-Id:Date;
	bh=HWKudNdEq3r+j2vtbQZkOvibvGq2AXW9f8O0n5FbfGo=;
	b=cXuKecQYlcYXHvU1Wu4Ld/X8yevDRMfkpnMyHcOzz9CElU1tkbdhNVtSTfSgkD99
	EXgo854nrRLSjdTGlX+7tP9tt4d7YECrNqcbYwMuJULdqnTAWX0v/D233pb3Q8SmyKJ
	WVZd0xr7edXV2tn/eCIn3PyfZvOYPEPb8iCCFc1I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655554079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HWKudNdEq3r+j2vtbQZkOvibvGq2AXW9f8O0n5FbfGo=;
	b=bjlbkPKLBxeDGLQRZqUeDKu8C54LSM9U8m8c3WXc/9j/ssrrBputFwDcI5NcjPMa
	YLts0V+GEFYcNui6GyCnUVKF9e/ay20uEDvAHZyAuELOk+iOifWGg697dgzhawHlGdH
	1g616gpqNvTeK1esAtcSpqAhdeJZ9qCvRkAb5/8c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018176b679e3-973d175e-3c85-4373-b88c-feba967c03de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ea69dda87e9d333453d49c816b4a8ca642978b30a3ff17ca88030ebe8ed1933
Date: Sat, 18 Jun 2022 12:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655554079
