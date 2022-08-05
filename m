Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1EF10E0
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659708053;
	h=To:Subject:From:Message-Id:Date;
	bh=nFoUo2LjPNuJ1cdv+4qLP7pDhUVBrKD+WKqXZawsZdA=;
	b=iX+JaGYB8yYCZh+5KT6x/h7h0EEEuM3S16r1UwplWUEwdGce/mqYU1n8YtE4bKdy
	zQl846qQ7IRO6lhBapO2qX7G6YRX4Pan+RKpKFwURoRGYk2t6SzcQD1U4oHUEnRFd11
	IE7yxTgTj/ggS7SjBaBes+AYFsdyKL8VM74hHfWw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659708053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nFoUo2LjPNuJ1cdv+4qLP7pDhUVBrKD+WKqXZawsZdA=;
	b=FWMG+NsWLejbCTeAXyFwSX6efnvssw+KC9FLpIN/TVphiR6b8JLj+FItqE7YX1V8
	aFITedBKCnB6Sxj6/txokDMNabYbtau304A7uWepW5pve56thRWZOvoNY1ebJTdTUIK
	SCCWLgS1gVnWdo46/2RwwfhSlPQACZCsehC0UkIo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826e4f1496-65f4ca57-97bb-4a67-9687-8c7c70c1ccef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6fd97fac3f6e508aef2b477ef819e330bc3eeafadcd12393a77f16ea744b25a7
Date: Fri, 5 Aug 2022 14:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659708052
