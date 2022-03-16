Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C6117A
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 10:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647427584;
	h=To:Subject:From:Message-Id:Date;
	bh=6HFa2+M3YKAoNnzjVH5Kc+zKNQtD5NenqoRRmNrlIGk=;
	b=Dw39X7NCVR4+P3Xb/snlyBai/+/9wUdbVFjJVk+TxaiqADlh6EFcN1Tn6FJFNyek
	HaFQmv2Oty/2THaWHsGLBuONq4/AbruCi0mor9X8EVrtSxeWcKi9wQa8bqFoYSzDYoH
	fQAJjzkHxWL5pSNsO9USy2BCXAiqPb/+XO+nuuPc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647427584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6HFa2+M3YKAoNnzjVH5Kc+zKNQtD5NenqoRRmNrlIGk=;
	b=g5p5p5Y/TEHv1skWmG+gHAHCT9mG0gm5z3T1vYHTFMhK7D399ZrNbE8aQTIezGWK
	LuLJCsjZQasxOJcvjZxSXx0qgb/QArJw8ztRAWoH9FR7XVFqXem5rUhbgQqzrERRA1l
	dy2P/7b0ehh9ZU/Lyazuhih5zR0kVvnOrgP2uwCE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f92560317-1c83ff88-9035-48aa-bc18-69a04f6adf90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c4be9bbd2c3666a37d8f3a2e23c86155888c017e873da65c49e8ca71a986561
Date: Wed, 16 Mar 2022 10:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647427584
