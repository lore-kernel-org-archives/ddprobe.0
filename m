Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 806BE6121
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 04:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645418184;
	h=To:Subject:From:Message-Id:Date;
	bh=sho/OSmjyQ5KWRkOV4lJGGeZNifWcMbg1a7YFZHlsqE=;
	b=SU/4sSfrRxvsM5FMNYrkHIiF30DKuKq9VYQKIfVf5yGfrfVgT/WwLJMHA4a8rPsL
	HCKUFTRoCNlXyl4v43x6kmiDey3GWw93+Qf+z7wPRjbXz9CqqtAYcHFQCxDaGE+Wssu
	Z7FMO7riW+MjpcixOPVNkqnJBP5yhVTUZv4fjDyA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645418184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sho/OSmjyQ5KWRkOV4lJGGeZNifWcMbg1a7YFZHlsqE=;
	b=GdhpvOCVdflVPsDWWjnl363sqa0W1TaUELSkepzwN7b0/IzSFvefcv+0aAVv+KaT
	OaKETNqT2PZW+4ixEzD7b8z4yaH1quCxVn1EMKOlkQCdgmahBZm+elWDk8hkS6ZF+z1
	OnWut4+GFS2bxJL4XqucYVwuh8Zq08dKsPpSjuyA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1a910049-b1053bb7-dfdf-4e5d-b1a6-4fc5d7962b9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbd715fa3d2e9b7876ca673dfb9c84916523358c2a202ccae59bbe11122cbda9
Date: Mon, 21 Feb 2022 04:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645418184
