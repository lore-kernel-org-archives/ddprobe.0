Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7202B5CD1
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646157385;
	h=To:Subject:From:Message-Id:Date;
	bh=zKqs9ROQYKlHF6XR8LJeoGuvNb4aQw1JiPS1DkhRnF4=;
	b=MrVneHCXBKN7hSNfbP2icUYgqZslbruGOshi/lIF83tA9rh/lpa6oPsyDAp8JKss
	IgLLmxQupwxBuOGUDyDq8WPqgqotnMXnOpyq8LaQTeQRsy70YPV+eR1xuf9yAjpNXWW
	upBErlhjkzFRGbXmEjS1bVAB4Gg8c2qJnGhfIlgU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646157385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zKqs9ROQYKlHF6XR8LJeoGuvNb4aQw1JiPS1DkhRnF4=;
	b=k+UQjl5/mOD28rO8wKtYmBgLvRbWh1SbHQeDM+gpty9F6AqohaFiANaPTz6M1i2P
	UmGkucKt5AILzWzoRgrSi4rSqi4e7Y6P8V3bEnPeBDj6qBr/lNoXjfAQKggGmNRd0YJ
	8HDSIdh8RJXBkf5ivmqnrB16Gk9B2sNxJhEilmIM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f46a04c54-7149af2f-ab82-4fa1-a3ce-30a350bdf9bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ae10c0bb61422540aa6441a41a2ee264c9da2af849590b471b06115568f4a59
Date: Tue, 1 Mar 2022 17:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646157384
