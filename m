Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05325136B
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 16:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651164538;
	h=To:Subject:From:Message-Id:Date;
	bh=5lz1cT25QmJNgUNn9LePSNlxtJfeEEuxp9NWhM1KOa4=;
	b=d8zFUksN/4gBhbnJs9GnzmdCo7CD3kKoVs/BngnncBSquE2ydJMryqTb73dnaG6i
	r/fF4Oy+FZC/bdbNUjJcoFu4rC+/eBEdZG+Z6KAdwG1POmutkz45gjTEjx3aGlWd6Pp
	o+e9IhCt+idPu6r/JYEFrWr24WShh+MdKdCdy5QU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651164538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5lz1cT25QmJNgUNn9LePSNlxtJfeEEuxp9NWhM1KOa4=;
	b=HMNQgFwU39HAwm1t/gxsH/aKRy6+/Qs2RC2f0qytZYkUFLg1xKyfQp6m7lC7buKo
	TaZ+9QPUUQ74OuUE1HIoKO1F1zjf3ciUbggYzAtd82xrKzQOk6UUs+kzgWQk+CzQTb0
	n5N0T167uHWxJTC6pFFC5mCgrle64PxKi5FClu9Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018071136586-69be0155-1f72-48d1-adb9-6165600ba778-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3fe313cb8fd6c22d5fd8439293878ad89f80e2b5dae083075f1358b64ec9dfc1
Date: Thu, 28 Apr 2022 16:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651164538
