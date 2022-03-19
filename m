Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D147A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 03:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647659184;
	h=To:Subject:From:Message-Id:Date;
	bh=X9XUaQWV3hlW3A4bbQnzfZgTf36WjWqJOtt4DmerOyY=;
	b=QhbXohN4UsQtLL5JSa9buwlBEfOX9o0nNJlG/wCbDs5G1KF5fGB7DrahuXJPR4t6
	orqQEBrUoQIgB4MwuJCl5pEIC04/Uz4fxSDCtakhYN71hVHCNjKWMaL1N/w4aptwG5T
	oukph0+f6T+ih/bDi/9mSTD84scLKwr0s1qiLGEM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647659184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X9XUaQWV3hlW3A4bbQnzfZgTf36WjWqJOtt4DmerOyY=;
	b=C5Me4BMJGjcCHcDnpAsDds2AK2H5ewCalcF5GZ7g5nLLgLCXKa6fokqnPG04MFgM
	kwYhPCmOjlmjboSkdFl+AhaSS5B7RW238s4whOUqWYySYOxY0K1vjJGLiHCz2ZGqD2a
	QfoZxddcDexS968KJhGDXhqifrNtEQLBlTc+I+RU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa023f26f-45688c66-2edd-435c-ba40-bfcf865a4b70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a4c48c220236087711ff420faacbb715733759e2e05eaa62d81f66a6d3ed912
Date: Sat, 19 Mar 2022 03:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647659184
