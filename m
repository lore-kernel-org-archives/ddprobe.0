Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C343D8E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 23:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655162879;
	h=To:Subject:From:Message-Id:Date;
	bh=KJu1Aae3KDS0NInXDLq+67/vd6Ft0eUZQgi2+lA2iXg=;
	b=WfsFhQ3BhHjvUXTEqufRVdrDo5ukylASWG9HD0qxIZ1ekCiSU7HfEhQtPUAJefKs
	eZggN9xodrfnet8ASOwNByXqZQlSxo7Cxi+itB60Unn4HKRJrB4U8M5I7eoVzkorIua
	X9Xw2DZo2y3ttzyb1Vs2eZHUE2fnCnIFfRnkB+0Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655162879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KJu1Aae3KDS0NInXDLq+67/vd6Ft0eUZQgi2+lA2iXg=;
	b=V9HMs5bsVnCfQg40nrE1UpVhRH6HIj0rFaNzk20ku6+31lkpkF6nmM1oRs95tAKf
	vqwh5h+LL7p7jx3gd3cMDyR2wjSU23AtKYys5raq5NQUz0pLxrj/xw3iVux1xqk8TET
	hm5eHgrM7cTZIvtd7x1DsK5/St+kapM9Wf7kexmw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815f653d2e-dbcf0428-926b-4213-8d5d-ceda94a07c36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c982e3deb5030f25a09e39affdaa1883f1e9d416bf91c2fe60868aa3f081f43
Date: Mon, 13 Jun 2022 23:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655162879
