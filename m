Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24483200
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 04:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645157184;
	h=To:Subject:From:Message-Id:Date;
	bh=sTlULspQkkxQdrmYmFGpJJCOPvbywcXN4Zv5EJlfD4o=;
	b=ALE3NVx0qdx6lrUgi4yrBLbruHQpbtmbV9LmxRlvtrGZsaNCGXdTZHmDJOltA2/F
	i1MvNVNLnuv5XUmOlg1LNchyHgb8P7xvbl/e4svJGnNKdzu60uO+uX4Oy2JSPiOQOlI
	UZ/TDYmxitDSXAJYXwwlJakBtIpxXgwpf9gAdPKU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645157184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sTlULspQkkxQdrmYmFGpJJCOPvbywcXN4Zv5EJlfD4o=;
	b=TmuDql3Fzc9lQLhXj/emO4UDNpI9J/r4lKa9mEmCbhofTAnIN6LbdCAr/QLwCg7m
	kEjFvIaKDFah+NTClTxf6A2byUXgB8LMq7FERpevzJVdfL2JFVKwMS6nIuufU3A26gq
	nmWJlJftpVGdaCd5C/8Av9a4sMWEuMbOQzqWgrt0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0b0274d0-01e1c4bd-d8b7-4d08-af4c-a28ae10e9602-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0718a025248260c08bbed59d0327f364b451766411622d1be6e02e2f1dd1fe69
Date: Fri, 18 Feb 2022 04:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645157184
