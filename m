Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2527C20E1
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 07:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657785412;
	h=To:Subject:From:Message-Id:Date;
	bh=SCnEQimm1oQboD/eQCflo4KZijlVK536v2SWH9CG4B8=;
	b=abrvNMw5OAop2y75VCIHk9VRB7v5K7JUJfFtlyyZ+E/dTiWakfBI7qtnAWD11Naj
	garUolU4M86rhQBk7TB1tTC0EZAYTevHOWjcEwJIoDJEFLB5kYYdZ2vD2sUngmEYwRh
	YoIFYLcwbrQllmo9s5jNu2SrbIIrZaIonOzG7NKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657785412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SCnEQimm1oQboD/eQCflo4KZijlVK536v2SWH9CG4B8=;
	b=EXO2+O1YEnz30f+ZkNSuP0nYAhC2HmGGmTBIBire9eSTmUucsLc3Jucvs7I9RxlQ
	dXc90XwFMABUSd9UMlXIPyyW0O0pWrTK/HPVFLtKFAfpzWJyD6cmt4L6fta7RtQRZ3i
	z8PhNAqsduBN2NFquh0KWlPI5i+Fm//N4WojXAjQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fbb5eacb-31d7cc74-8410-4c68-b616-6a172bd7c24f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a1fa1436083ff277fce85a5981c884b05fb75dd3bb99088efec860d396e82f8
Date: Thu, 14 Jul 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657785412
