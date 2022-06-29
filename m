Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCE52575
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 13:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656509212;
	h=To:Subject:From:Message-Id:Date;
	bh=bSDCL7t7Xc8AEGKUaMtYEH+GGWlIAUFSv9BPL93avGQ=;
	b=IanVg3bCcTcHePtE0mZG6j2bmEuFfmvBF/07pLTIumqvCdmxsLawvmwny5v0IuDR
	+J12wRPAt7Pg/5OqvA7xMkqyr2GD95hJZszOZopCFNHRWxShjmdW4TD7CqE2qyu3c8u
	IthP8KXEz7Rp1qZNsrZkduJgL2om+nFDO+Gxvxu8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656509212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bSDCL7t7Xc8AEGKUaMtYEH+GGWlIAUFSv9BPL93avGQ=;
	b=egq/agbwM0gMcbu+yQu945c95taWq3du+pHYN5bi6cILcyJ6HB96PM797TilVjfu
	AR70sJmXmm8RNlgaAOl2SUzjP83ENz6I4zkVb4trxEUfYGyc+hPS+98Y8md3jjTb/aG
	He4+xJUXEQut//vG42maBpO8lmLY6lyrAXiCRAwg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181afa4a6a1-3f5931ec-a06b-4d78-ad5d-87628aceea45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ab146a0153307318301e90910d6fd5a9a384096727c9162b0b1636cf89289d0
Date: Wed, 29 Jun 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656509212
