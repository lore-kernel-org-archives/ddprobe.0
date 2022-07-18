Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6FBA20
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 03:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658114212;
	h=To:Subject:From:Message-Id:Date;
	bh=uiMHBxKjDctIMVYGkX3hwGJMQCRyIOkl6cBnfqjH7CI=;
	b=O6xg0fWj6Ucu5CRvacRcUBSBIBOKtOexwlC6c3+T1BUwTDPnep8/xyCBE8EHgI+r
	1rTx7BCxdVGScxHRfPPo7Xzhp6pk0q/QpXZvYoWJ21p5HbaPd9hYgckmlEhInXExFOu
	qpOkshNA+ny5KuDOxREJ6atljDOBR3ciu2CiyTdM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658114212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uiMHBxKjDctIMVYGkX3hwGJMQCRyIOkl6cBnfqjH7CI=;
	b=Qm/vvCNg8PZElKOXUFdHFS9lzJ21Ws18zLTh9fd57RbWh3jHX2mCZAAp1EwIxVPh
	pfZGLfjUiabpXW64FFyb01etkBsTpnnhmrbPHZCGa7CW7dh5ydFVdbpypXPCy//yrXg
	Xwaqd28yB0pjue7AIfSPkj9XgUtM7enhWbLUouGc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820f4f01ae-10b73563-bcf1-4259-b478-15bdb385cd6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0114e32a06b154612489eff62a3f052df28d5366999a76917aa61558ed50f628
Date: Mon, 18 Jul 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658114212
