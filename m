Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F5AB5580
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 16:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645288284;
	h=To:Subject:From:Message-Id:Date;
	bh=rj3z/Z1PiasJIUh3lJ3xtmonp9RsVxkhY8mv6G35XS4=;
	b=Tt0KpClPT/J1iDc1LEtR+vhvgcSA5KhauGUdlm2Gch4Xm6RO6D5/vLFzsnxWwByU
	gnVRV4+0ni7g754gE4+gKLiZpaRL4u0AH6O5r6DkmpLlo6ISJTreI8GeCga0RlTxoPT
	VsvJO3wGYk/dlWvpoDP0jiT2g7eNH8rsYaBkEoMY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645288284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rj3z/Z1PiasJIUh3lJ3xtmonp9RsVxkhY8mv6G35XS4=;
	b=InVkVIQv5h2BChXf9bmH3CG5lYxP1dqo88UdHbebV6wL0qkMVO8o7YXqOyYF8hJs
	3xmeTdcNF14+AE67FGy9UtdjEKCfAYaYKT24ksNjTCwrCL/CDdqhuKY+cAOmTiUrbpK
	jqp36IhuzOxPtqjcG5IlAphI5e+/eOB5dfArc+Dc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f12d2e257-bb3536a9-836a-457b-b3cc-263bdfc12b2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 959111edb14fa974cd4816b44adfcc062ed38a60c279c35c7968fb91f0b1e6fb
Date: Sat, 19 Feb 2022 16:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645288284
