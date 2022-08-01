Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606317F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659382852;
	h=To:Subject:From:Message-Id:Date;
	bh=Ym0jSz19WBBGbVbN1PBPcdZ3xyupptp3d1a9HySVDHI=;
	b=ZjMiYQqVsYvf09AgBE2AAQemGtQIadhdnmCVPhWSA/fEpsMhNygdLZ40ubgDH5pW
	zR0Pf62Oqrv7i5C2esTyz2sXnttjhrkvFnngI8/lJIy6EEyiCSHeC3W6+jP9DO746vC
	YvfTqHPfQFp1iJlncPQfnEZeQcl/67GVi9Ig3YoQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659382852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ym0jSz19WBBGbVbN1PBPcdZ3xyupptp3d1a9HySVDHI=;
	b=QB8Snlrg+Y3dCKlxfBMCFU/3f4GY49m+vXUS97np8axsUFHMhuGh0+Z7W9+LG8fL
	mMyViXPHCMdVMb2WOQ+yWE5zF56DTMRMbQgv5urdHK//s0mM9unjGvkvSSAQfFJ58aE
	+xuDZDgQzPC3mjtboMGhkh2PmGaVQSyhIwxgqLCM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825aeceb9b-a63b8ae6-78fc-47f0-ac9f-57101c5d24f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65c13a6025cd92aee8feb823f8d1a87c7ff8b339b036d37bea11cb9761ea7f21
Date: Mon, 1 Aug 2022 19:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659382852
