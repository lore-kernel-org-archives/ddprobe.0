Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7BB1B69
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 06:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644993984;
	h=To:Subject:From:Message-Id:Date;
	bh=HuuTzrYW0nyb2OYoynxjLuXC0nBwnVscXcRTJhuKUus=;
	b=FXCTI+CxrBBMj4JLC4tE5KkyBAIZRfEcwNMkuLlSwFOOU51NkcoMJjNJe2kv9bEd
	ipGv91xUDNnlCAIc1IeWA7SKSi/6mBRNlAxhkjmxYoE/KzVngrAdKz8a2PFOkLJ7SfH
	piiwHHOOuVOobNJy37+vN97U+eeFMM99/FkPWP+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644993984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HuuTzrYW0nyb2OYoynxjLuXC0nBwnVscXcRTJhuKUus=;
	b=DEk77Pn6mqgQ6RlxfnyU+TjM2hWNJzUL0eGlZTOHe308AHp+BKJHm8qRoUn/fwER
	77L7c95BB5wUDy0yWQkpkmj2CH7HYZPgkUN154y+RQo/KM9o2k/I1IylnmHHUrfFNei
	pf58V2gW+H1f4lZzDnKLmo8KFKk0ryu5wLtY6UUA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0148390f-0a81e752-d40d-4bba-ae6d-3c82faa30cce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8afdf647077bd533ab3379095e6c18d985263929cf174b3caa8ea8c755ff1bb
Date: Wed, 16 Feb 2022 06:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644993984
