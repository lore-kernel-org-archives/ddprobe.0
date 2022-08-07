Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7493C15
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659891052;
	h=To:Subject:From:Message-Id:Date;
	bh=j5kh7TP5ORlOLDOzDVMPk9PRs+cobXRpFxae83uUcYs=;
	b=OOvVNUzp/+E1WXr04EDSwKUxiq9QegVdiev515/x3RRynDJbXc0zS7BzQeJUYB3/
	TF7ntACfT55GzMpopok8MjQyub+6UP+rxaYU3U1UX4+ObsV/slaXEt+5nl5tFtDdOiy
	Wk3NBW8bjDHnT+Z1LMq7hNUbPfy2dg5KonoLLi6s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659891052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j5kh7TP5ORlOLDOzDVMPk9PRs+cobXRpFxae83uUcYs=;
	b=Z5W5hfnLCtFAHw5sxeavHk9hQmxuy8tLiYma+L0ispN+Ku8HGNIjJs6271h5vd30
	V99CQ+ja0UMYCLvau6ieMx9IZdcTpiJXUXqN0KMx7ih6fTE+6lEPX3EXj2jnPOz+MfP
	uIXBXx2ZXlYRvXetIjWXgf1dMdueUUWFzSC6RwtI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827937700c-9856765f-b00b-4433-94bb-2cd78beef468-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fbe9099c2d5b335b94793a28a378c4b114f428ed2d216c220ee3ce115805b6ae
Date: Sun, 7 Aug 2022 16:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659891052
