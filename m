Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 685B82F29
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 09:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645955484;
	h=To:Subject:From:Message-Id:Date;
	bh=FWkfArHvkN+mUzXOui9Z6R8E5thmbxgxmxlzoOdUIOI=;
	b=E6eM8AWxx6PXBf5HYtdm3dJiZRuj2uFABQoC6wnFWPGL0hu0yq8+nlEM+oQz7zoC
	fBAeeaD9mrSFCq/IlW7LVKh53izF+BmRrVL54pqdR2VTe+E+GX4d21vMXwtxWVZwuyU
	e7bwzjPBSdGI2dqBuVel0VIyHJkxIMDKG65z6GVk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645955484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FWkfArHvkN+mUzXOui9Z6R8E5thmbxgxmxlzoOdUIOI=;
	b=i36jZUuEJFFacHfU0KcqCEhq/mdfUGNUDWyMX0eMi2YqhCo8XpSmeMFkUGQ9+Aw+
	SjdOh+0nVAwhHCcw+iD/aC0K0SzJzQzuYcX7CR1r+RG3DbG1Gc9+/JbnxGwULRQTurT
	pa4jn9J5IvRbzDk88AI4ociZ+2puY9VtJmT8teY0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a978c71-b5bc10ce-9a88-49ce-8308-aa0f6ea50ddd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e984633bb5eba070c6684ba0e845dfeffea391f094231e91f12f478c4f99367
Date: Sun, 27 Feb 2022 09:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645955484
