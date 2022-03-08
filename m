Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96C5E2F2F
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646767884;
	h=To:Subject:From:Message-Id:Date;
	bh=lF2KKy6XCxqKS7oA146xDahsK2FC7VnHRHQMjRHLqYU=;
	b=XBUDbXZMO6uTAKbnwPP+XfAwoPwxyEh/MNEUriQZ2T01NMpv9ac1622DgOWF/cmY
	AWtDAIZ9mBBgc9oxE7TOqSA7XcREBB3bZV6lQf1ttduPOUjhl03Fdiu48dCrEg0uf3Z
	Jo0duw+1VVq1TEr1ZRDCndE4r9PXLnVY8+rOtYws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646767884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lF2KKy6XCxqKS7oA146xDahsK2FC7VnHRHQMjRHLqYU=;
	b=FbBlBaPvNFvP88Ot+kivRcWvskkqoixYA8kglEIbHrdti8u25SVn42Sle3nVhGDl
	OR8DZSLXDurAb4mfEEOEh4srvc7bZmTbI6IpOsyQwDq9QYar2uolKbW7buFbQ+iBcPk
	zK16iHL6rCK1J/qMgsX/SnaOkKWaP6QAMAws5T4w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6b03ca17-a08b2fbf-eb84-4d1b-a31f-d5a630e8bd9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9c2eeb251f72affaa6a80e5d0070d86b93267c357fd6b93c41bc109fbf64723
Date: Tue, 8 Mar 2022 19:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646767884
