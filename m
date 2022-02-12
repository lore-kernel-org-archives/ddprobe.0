Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6C697E
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 07:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644651641;
	h=To:Subject:From:Message-Id:Date;
	bh=zwH0qIvUw2h9bRZDEVzJ5+TwXEYiAPffj5Jitkf8nh8=;
	b=NZQFGPyrNopG26UCKj6XgYDp5+XpOakUSsxJxIsKqmKKRtM6+jvTqgAHUs1+QdRa
	TenBEc/QZmloxWuuCAiCdDOHnK3Bi+Wn+lMU5EuYAwvndB/+LCRwSgiKZjm8LHVw+10
	r3a7nT77CkUJsjNOqSAEwxxpsrw5fUXekGrDipwk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644651641;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zwH0qIvUw2h9bRZDEVzJ5+TwXEYiAPffj5Jitkf8nh8=;
	b=AupoOdMMwVbs6gazCoGbuIu5B4mcx9lSwAnGYZDaQN7we8NEhLYABjK5zKG981DI
	6QDlhbZKdUfl8P+Y7rAepA0lHAM0f0WjOizMAtWUaXOYp/BMrVQ2BA2hyN+M8GX+8H4
	wHDVBq+/AfQ7QDTm3b+g1xUQm/wuHkPgRy7dCHXs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eece078b2-63860394-0254-461c-aa68-0e8ac3124ef2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81343df3b5546b9f3bfa9f88c7837cd1cc38db66cad5b4c7ac1a2464a3cebbb7
Date: Sat, 12 Feb 2022 07:40:41 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644651640
