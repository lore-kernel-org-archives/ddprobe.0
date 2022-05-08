Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057051879
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 21:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652045338;
	h=To:Subject:From:Message-Id:Date;
	bh=MUgmUQqtLo9qBZMBDDALAaU45cYlYM0S6a703yybsnM=;
	b=PGkGwTgNXxlrvUJZmx7v2TnGmr7Wt+Im6+y7A6bBzzvSpgV2gex1njHlsgzo5SSd
	35nIGX9hO+/y/HWM/xHRdywg069G+qAk3G5+GctkwMscJcdNCwLWm/NX8xNw5NDhBjy
	ju1BNlJHXEaAzUVKlsmDTnW+sHXc+aIRN3rCM1aE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652045338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MUgmUQqtLo9qBZMBDDALAaU45cYlYM0S6a703yybsnM=;
	b=Ehy8HRm30slb7scdEFZlaTr6IfqM/rTVlS258JGnYBa4VxNd74PYjjQY+ftxnY0F
	vNA/Y2DiHZM+dgSr2EugOLwKtI3Srk+HokrKBGlE0N/7866rwiFnqvGrBsPA79k3Erb
	RtR8U3vBBqPt9cdKE0NaoOsDF5aE34CeWaJRxWrU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a59356b5-8fc56bc3-b988-474e-9910-f8627c1e9020-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e8e8c4289ffacb0550e5e9339cbe7343679562b5f200516cade2c4627c57c40
Date: Sun, 8 May 2022 21:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652045338
