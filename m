Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046FC623
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 03:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652586719;
	h=To:Subject:From:Message-Id:Date;
	bh=L0kZ/YcXu+8NR+SL2xTVj3LDdR+rikNqtDflEJv1ykM=;
	b=WAfHGLkVvkUmFGRH5vBvvMqDbLLTIxe6giE6PcYn3VQO0xLWe2O0BCHWVtlsdSck
	QmAdt/Rn95yaFMwMO897A/phJr5rHbLfEDwzTuv6lD+7ApQpMgAHvq0bL3HUYeSu2+w
	2bxIsNB2o54KElnHOssvGTbapLbr/UjXi799YGOc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652586719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L0kZ/YcXu+8NR+SL2xTVj3LDdR+rikNqtDflEJv1ykM=;
	b=bEkMCrX1v1zjNFGiV1r02gvkp+sV+hlyRZYZsGkJ363/LU9YguE9Ds5Z0/GItQUK
	sIUlkIh+qrp88KrJpjESrj+LYL4pFnIr2cML3E/WslqjARWRkY0fxWsR7/9eagmUUqj
	49Pyqhhcz/jWF54h7Yxlh43LE6PDcjihjS4O5T7M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c5d82831-4e649f30-5982-43a1-878e-e92d062435a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92423e3a2dde88baa1e769a30cf957cc8dbddb68f243fe3c8932fe5b397c089a
Date: Sun, 15 May 2022 03:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652586719
