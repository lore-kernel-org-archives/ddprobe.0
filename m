Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D94B7E
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 22:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646604984;
	h=To:Subject:From:Message-Id:Date;
	bh=C75BEr6VFI85NHKwMpmmMgTl6tvjIjwWUhtQRL1jwEU=;
	b=mqwQwmpft1Z12Tb7Y4kD0kXQ5Ijmrb/ssVhoz5v6aofRyDlZ4uYp9yeMuLhFtdo2
	il1AtAYhn6raGZg8Mj0Gnml19bMEt2/jSRNrpyLc1FtUdfuZ+C4gvyvn7DhY47+7cvp
	LkUwW1rv6KrkaG/PjSCXAqLdyvyMvK7N3oRWpcoc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646604984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C75BEr6VFI85NHKwMpmmMgTl6tvjIjwWUhtQRL1jwEU=;
	b=lTyL2YNSi29dAPtxhRfAIqW5xefBqu/PyEBlCnhjIg1GABaiPIYlSLfWd52XwB3I
	Q73Nmr29g9Gi27AHJCxuxD5Dm/CXNS6kucBwtQ3KgYtQP3reWEz3ouzFvfIhvDiwIMa
	o1jTlrMC8JCC0eQibc/TZTK6o1dcu68vXVby98BY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f614e21c4-a2ec5df7-5e87-49b2-ba5e-5d96f8b76948-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 215d806803421b0292355e426727cb4d66fe2a8b615e819781c59010fb9471c7
Date: Sun, 6 Mar 2022 22:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646604984
