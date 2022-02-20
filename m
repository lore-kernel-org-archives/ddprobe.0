Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D9D5CA1
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645358484;
	h=To:Subject:From:Message-Id:Date;
	bh=SJOSjvoW5jDwHnpRdT89BST8gwi++9knc2YVCWEFgrg=;
	b=Jm3+MgH1ZWVm2cra/ZYdaR8TUP7JgDuXOvhH6tDD6QmMtDv8qATAj6XsZqZ0/9U+
	lwQF9xlByQjzQ4sYQiYNGT89B2z8/k7QxitzWNrlsN3Mky6L9t8gHiYUXKAcKThrHGZ
	rLiu8U90nk2gc5RzbAODG0zNuFUW/NL2W9aUdRks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645358484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SJOSjvoW5jDwHnpRdT89BST8gwi++9knc2YVCWEFgrg=;
	b=NYBs4ivFKKAbx6PDqKgUdZjRtq3XAz6mwwy6s9lO3LYvT+8ZZdmuh9JrhXp32xOw
	g9RzVCuxjCTYmIzxBjmajvSTJwrOL8oJUfGKxdsh5P5g5zHXognhqYvG+T2x0iLkAYD
	Ixu0TRP08F99pT7aVPCrqeeOsfIM0rvHwBWw6dy0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f17020d17-c14e4bf6-0feb-4feb-8f43-d19521d177b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3aea7b2701156c144bc77c4f81dcc8b0dd5741cf7c5114c12437ca80c94c015b
Date: Sun, 20 Feb 2022 12:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645358484
