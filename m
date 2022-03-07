Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60487367A
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 04:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646625984;
	h=To:Subject:From:Message-Id:Date;
	bh=jawDz4lzNN4Bpu29swHnBgV3VPzpUkbf2Cw2hepegOs=;
	b=kKrk30d1mjzU5F5EO+B8ELZMV36u9qjPlWpdc34lom872ZnSXcklhKvJKNpyUCGn
	qR1CgnUnKHftr6Xu37QCPRlCsdWCXV6FHYssTkO7aKZBFBtZlpapvcumVGeBx3bYYDA
	CLxVp59wyTeRb4tG9Y/uTdLoLQZoUvJOkarC5KDA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646625984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jawDz4lzNN4Bpu29swHnBgV3VPzpUkbf2Cw2hepegOs=;
	b=cIBPLznm0wC0RHYpw1wxeTyfqT+GNrwB/oqyFjUBwScp3EmD+8uRZcaJaQyE6ePg
	WTPe74HHkL+AEYC4kQMCff2OF7sA+On4tUjXWVe2Cq1zJm3BmCkv7rJmzqjsiksCtgU
	+VX7DbpDEvSvvV2JHrLHACMiHn5cY+YK2Q4/xgo4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f628e9104-19e66bb8-c9a7-460e-94e9-f53377b37c29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 577107edaa59d5b1017474d48bf861b40c142d707743b70cebf3779c6aa134e2
Date: Mon, 7 Mar 2022 04:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646625984
