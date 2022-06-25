Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D773B7A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 16:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656173812;
	h=To:Subject:From:Message-Id:Date;
	bh=lmhH+SioBdx3o9l6ynwlExHCun9S+etZGTrtEl+SHyU=;
	b=hxBQvP7ciVy9S9JUCUY7LHEf/Cq/i6B+xgXqvZQXb4AFdX+ewkkS5d00snOx6nBs
	U25Iofhvp5HgWXO4XaG9iyUWBA43sdvvseMpFeZgSwCmVOerZIkKrsPRqP8i04Tde+s
	8E0XG0Mj6iGRows4DpDRADFPnzEuVMeJ305HwhsE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656173812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lmhH+SioBdx3o9l6ynwlExHCun9S+etZGTrtEl+SHyU=;
	b=kJt01m3WKoOXISdinVorLvlvsaacuMX+yqWZm/Zy/apXNGgHeDfFHyq637fmIKxd
	Q//DDtTLsTYgAO7YebS8WkOfDscSgJpoRnHOGK0HDjKUw7jl/plHe3HM8EpWaVKaRLJ
	4LJtozSteTL4Le7wwcluBG552OVGbqlrXqs1vSSw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819ba6da3a-6cf666f6-e72f-425d-b3e8-aa611cc94fa6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 876563a236e44debed4050071ffd8cdbad0cbff89ed7613e451bf04f2863ff67
Date: Sat, 25 Jun 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656173812
