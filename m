Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074EF7E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 22:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656974812;
	h=To:Subject:From:Message-Id:Date;
	bh=YhzeoR7p6a+9JR2Lu1qe6GypPIFT9/j9ETtRXv1L3AY=;
	b=Mdl/YCv6MVAM3Jf2PQSJiq7qLydOjtIx92h9ljif0XSmTO/bN+2lrooJH5pKmtee
	yxFp0LZd/XumvyuT6D6j8yrdL500QO81wPXMYmtRiy6oos6Z5fUCNHCMwjNqTWUKRyK
	cASRGkG96EUL2hieANSrQWI3lRfNkC2/t3SVgLxc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656974812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YhzeoR7p6a+9JR2Lu1qe6GypPIFT9/j9ETtRXv1L3AY=;
	b=OqPZFXGo5BkNURvnmm0uAissBnLCTUzWBtiH/bshHz3b+K38E9tUxvF/xcHDI+8u
	+LWj5+Y7K3EbVRDjTIOpokX14O40GRTvQRljeUSoRt8BH36ycnWhsX8aezCGhy4tc4L
	53cSh4apteoOuQeMu1vSVddVHibffFwJ99OaVM88=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cb65247b-e6780065-08a6-4fab-ac8c-9dc31e3ef7cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b69ba33ee9113f256df7fc7cc370894bef85852b3f722725073525958f86192
Date: Mon, 4 Jul 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656974812
