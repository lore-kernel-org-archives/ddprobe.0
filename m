Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1231A17E9
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 14:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649255938;
	h=To:Subject:From:Message-Id:Date;
	bh=4tVZA7wAOU7qzTb2dhPCCPkEgrxtow4Jm6sU2p6xnCE=;
	b=TH58dZo4BcLUdWt5CIWqJl1kq2Q69AV4za227WvJjHG975jzXnapk/CguiMaxj9G
	MGad6TO19KgbmtIDcC4ibTTfXLX6SkSl7JKT/g2L8idv1sU8KFGmKqhLSelSkMtxVFX
	cfPfZwziOt8iV7ZEcpSakG7fo7eP3ggvZqcvSYWQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649255938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4tVZA7wAOU7qzTb2dhPCCPkEgrxtow4Jm6sU2p6xnCE=;
	b=hHwtJhF2AipY3MF5HLIb/grxKQx+3RVonYUSxmA3VSm5ljtfXJXtyfI3fcWip9GG
	h24lRRvfVUUEdeGQ4r4o5EPbG3PI+yQTV00WgzA+jjabBgGGT3TGIXgunZ6OQ4BVygK
	cK26G2h0raoLQHuz+ti+Fd5HSfPzCGHQoNi8mSQw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fff507918-63e6fda0-9b3d-4a6c-be42-08b1cb771cc5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 357bdc845cc6d2f707bd3b0aad4c3f066a5625eef249b7f633ef884e8776fc20
Date: Wed, 6 Apr 2022 14:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649255938
