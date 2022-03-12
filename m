Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FFB92F26
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 16:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647103584;
	h=To:Subject:From:Message-Id:Date;
	bh=LUZe4UIwfK1PSrY9B4b1+GUaNOU8PIaTTElpnSMLKAo=;
	b=dm5sZDHUtvUo94b+ITfMI9XXBM8DFSNfZHTeWSPMzAESc7EB9SzRe/0dtC9YD3os
	YG5aGEGUg9g6dbk+M3WfU8jHQnNHSkmNb8dsixdrTNEXSNZiCUz8reyQdosJGcbKyjv
	850jeaSUZ3vL7wbf0yWrWdj6S6EVpZPyxYl86VJ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647103584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LUZe4UIwfK1PSrY9B4b1+GUaNOU8PIaTTElpnSMLKAo=;
	b=RO5LySrtrvUR+ZJ5ldZfqcrui/rgJxE7Kbz9QykknLy9COGQvekx9pz8z5qNLT8L
	va79NVkpMIBBJ5ZQ9r+zRlYqodMdHs4jEsl5kB+D1BWz3MX2ghEc3xsJ2uoAIGzhzte
	9prUUY0PoeBKb1O8GbN57IxH21740s9MZuRNDr0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7f0629e3-fd66b0ec-6e5e-41d8-8710-0a7386693d9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16d784f516ba7da3243447f615008377bfc64693c9331ea1e4ad81b7d6bb4774
Date: Sat, 12 Mar 2022 16:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647103584
