Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74DA12F32
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645185984;
	h=To:Subject:From:Message-Id:Date;
	bh=SAKIt0clGJ/gVu2KO73rJ2AMNutnj7wLlR154Kk3GbE=;
	b=GJYQPYvUczO/sIOs0PQick4aDD6SCTdEB/YwRtDbD07ZvZtooamX5ODXUWQJobvE
	LKahaHnggGqAK7gIeE7M7d3fetziesqkGGOHL3zo4C8A68HJgGMPD0NbbKDa4Zh9NnF
	cM/uuDcpkE/LwlFwCXpu9uFzRek80RijPL4SBaOw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645185984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SAKIt0clGJ/gVu2KO73rJ2AMNutnj7wLlR154Kk3GbE=;
	b=OEWgrXGvNcbi14JTPP324MVi8NrXCR0CFpx1PwVvatvQKjuaeLy5TnaNC2vzXPe8
	NDCcL24muMWz86fuF+pdBbDP5jHjx193VT4al0HCHM7FKRqWtuZWCSP+MsJYlGBvI5s
	vC7bnKa2AknitoKiaeechjDmcAkv/qJ2NrNA1oXM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0cb9e910-f0c3c38a-b5aa-40a4-9e00-2269f7fe9748-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd4bf01b953d7f98bf677c653b2282df1643e14af3af441cfe79d3e9899e557f
Date: Fri, 18 Feb 2022 12:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645185984
