Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26C37E
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 06:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644647427;
	h=To:Subject:From:Message-Id:Date;
	bh=xglUI1gx2xRbHEBjwQ/UbfFpi+6Fbofh9y8M/hKrEuw=;
	b=HLXOw7A2+XTOyuIEF6WG4dVEP0x6E4NWKUs8YxjKt3vm6NFKEmW43XvbCxKPBRHD
	gpC97YCd/INHDcSta3SdyQUf7Krea/0uR8fHQxWsTAb6yHplxJvBaPkeu8BXMXwU4tT
	lsR3tUokn/qj5kiD3lvyZoN/ixg30+CXRn0WL8+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644647427;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xglUI1gx2xRbHEBjwQ/UbfFpi+6Fbofh9y8M/hKrEuw=;
	b=PmiJ77zNnSvE9e5BblTxhJifs5lz0hiwvoeEmaN6n09O0lM8Qokl6ugklxGvMF8F
	N4HpUBNoPJ/PlnOqUIFHndapvyFEUYg86e7LsMv8Gpphju+AnoYSTQgcuB7kkBynGWm
	mM3eCDZMX5KH3iOdjaJ5+Z1/hkwOyPe8Fml3zp9Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeca02b0b-8114f5e8-4f21-4cf9-b03d-400495a1362b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7725981bafff6f0f10c0ae3ca074497e481f161734a0271724fe3a96dd107684
Date: Sat, 12 Feb 2022 06:30:26 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644647426
