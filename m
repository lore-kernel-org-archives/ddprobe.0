Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1E6348CD
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 09:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646040385;
	h=To:Subject:From:Message-Id:Date;
	bh=Phsj2+CIim38RAz7olIw2zXeFi2oHOkcjKXNicEHy7c=;
	b=WOKIfSwchWdOTVYonN6IRU6DyLZbACDFNuOOgsnsUh9WW/O8XlKZpXoW63vBRBbJ
	CwRK4wX4qnIFPR6y2ooog7JGoN3/ONo/QhWTIxFX/laWD4ffAEHslv5n+Y1HHIKtmOu
	0tC4Zq1UKfKFGRLCmJhodeetKppZAUwXeFIYXlC8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646040385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Phsj2+CIim38RAz7olIw2zXeFi2oHOkcjKXNicEHy7c=;
	b=S1y6T/lkB8cSX45zfFrwvGbbLBoirQQp0Q5/hl8J1TPGL/rm37+O0jGVTMd5eQen
	L4KsxNnkwimxGiLZLEF9ki4xn4jXTUU0ttF0vlGoTBLXthiLXQKAYUHKY12Nwm7J/WH
	3DF6E4G/EuNYagtwVvdk2kMJk2TJ5QWxhOjdNCLs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3fa704fa-cda5100c-a311-49f9-9293-f3381de2731d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a21d2960f77225c56923f895504c6ea3599321889c622c108dfd10ab6721146
Date: Mon, 28 Feb 2022 09:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646040384
