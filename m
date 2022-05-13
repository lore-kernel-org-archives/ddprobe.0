Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15B17A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 19:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652468819;
	h=To:Subject:From:Message-Id:Date;
	bh=zq+wQ4pV2Un/GQiS/lb2EM6Iv+SlBPji67+q8PRLcEc=;
	b=WclAtMCKSsaWRLpEA+JDwnmXzAY5mnkM+cgBsGu6DHjDyjzV05fSoPoR08sRDyWG
	aWU35/Ts/HWt4IMO0vTcPT2lyabPmeqXJoT6ASURIhvxViUBQVhwHv9wlAr+2OC00+N
	IHcnAXFSi+Y/rvvP5JSprG2DILvHXdx5rqXGET7U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652468819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zq+wQ4pV2Un/GQiS/lb2EM6Iv+SlBPji67+q8PRLcEc=;
	b=Z16suBgsTabq9mvNgAhtc/1SXiJkeSQf3HAnMePVmpTUTtrgTjN9Ysh5zNxthYuG
	Wwtfy5ntBQL2z1nzSZldQXHXQvZi5re0cj4AdlEH7Fe/eF+f7bXi2EhPKkAwvDP7ZP8
	pzWAjwIx+mzCt4Y0ydHhSGYsNPhMz//xj17wkAPw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bed12540-b70c6244-8ef1-4712-83c0-0a7d34d76fca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51067246a59f67cbfa8cdb5c6d9893c3b738330bc5bc1a538c9f767f8a81adbd
Date: Fri, 13 May 2022 19:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652468819
