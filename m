Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4721365
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 14:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651243678;
	h=To:Subject:From:Message-Id:Date;
	bh=I0cJurxI1s4bMqCpoNy+Jj6Xr+o0a/lVfOVxjJ3+MVA=;
	b=ObhJFq5Vg3mKNK3/qR/SypicQgxtCL6cz3cPkjhph3M23vJj2cMF33i3Eh8UqSdm
	h51dB4gNhfdks29Rg3Gk6YqaYZ62lt4+0vNylv6cVb6Re4c0/ijqwzLw2biW60ciSD7
	WnzALSDm1QyC1TH7QPSReKV5eFC0gDs1rKz+Sqbs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651243678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I0cJurxI1s4bMqCpoNy+Jj6Xr+o0a/lVfOVxjJ3+MVA=;
	b=TLEM/1/GTBtfTbjQTbkSSreyVgb8+WnIBtPoSGC4GybaJxCYCLVS8okFM6kWmPeS
	KddkT6QNTWjJ62PoJsKjIhMmYUsx1VqykvfTrQ7TLD5diOqKyv5/M6aWqCbhla/EhRJ
	7/NEyn17c8p5Wk7AuxDSiD4H7++YAIPIQJT+Gbkw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018075cafa3b-3d0a491c-6538-45ab-b6e1-b2d5a58caf03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d70bc3cea62c79bdad08176c2378e9aa61d3a44e6ca43cc6e4f4574414f5462
Date: Fri, 29 Apr 2022 14:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651243678
