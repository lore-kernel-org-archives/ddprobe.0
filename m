Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56F37E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 03:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646970085;
	h=To:Subject:From:Message-Id:Date;
	bh=MHguLXSANefRfbqhKxE6XpzMJeQE+jz6lrn55w/68aU=;
	b=OHujvrMPK3N9K4LEmoIymS7RaHV8vrVdzolvet5v+bFZcNXMsmt1zhhuV1X3wtkh
	uDhyVK9xuAi6r/O14V04sRBtj3BzHF+o6mkczhlPr9JY8K7HQsz7s9NciMuDi85BmZm
	c/FAAcVZz1yzdmo19VAHx+oP1QNnLbcQCJPL8PNY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646970085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MHguLXSANefRfbqhKxE6XpzMJeQE+jz6lrn55w/68aU=;
	b=geY7FrvwzTjV5YKoXPhI1oteg8/M5aJPrfwdYOwVgVUfc4ykljSXQIre0yQ7vQbf
	O5ic1sjkdOQQPeQpaNDLoKZ+REsYPdbGgyypMQW9EMN6+IgfF30tgt9bTcgPRyz+p7F
	x7hQC7rRIvkLgDdxLrAkNSYpHvKKXeZDik+gefg0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f77111de1-cf01fb42-fdc6-48d8-bb0a-a59a717ef1a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7531f4878a083958bd148971fa7dbd98979bc1301505a09a4900c876479b10be
Date: Fri, 11 Mar 2022 03:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646970084
