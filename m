Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9243205
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659818452;
	h=To:Subject:From:Message-Id:Date;
	bh=ECcUX9ylhoLPMAYsB/o0EeJTHkcvlkbONGKIWbbOX2E=;
	b=YdqXAOcqa3HeFoHV/xJsAKnU0qcNqcjwjOSTU/HcYYC59ESyOvGZuyJomcre3VSj
	XYJvbdnXNtaSxnyx0I9lcRa7jnCZ6xzwvR/Ysrq1mii/I/Rv2tX/z6MZ2fJOCotKtzG
	V40Xvr32vSwJ6Ft9rC9iWL+TBVySOFIbvkYZVEJI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659818452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ECcUX9ylhoLPMAYsB/o0EeJTHkcvlkbONGKIWbbOX2E=;
	b=RvVZPmRVMnUgEyymImPSJ+H1q+9Zuez1/GhiLFSWOOgSVQ5l1OepdXSqv3qYbW7s
	e5OqvheX9+qI1AWFbpfOVZMYcxnHMJjW8ecG0U68P/GofeOk0xlvRUWa0R3+FODVD26
	sa46a6mxMT2YEemivFARxc9q4BbtzUD1dN2pvSyY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018274e3a62b-ac9a999f-9cc6-4f57-bbd7-8ac4827a042a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 968f8373b213ccc9e4e57c98bdcdc74f2efbf5f60044bfb23553385eeb6e9690
Date: Sat, 6 Aug 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659818452
