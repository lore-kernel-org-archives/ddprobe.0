Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A53A7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 01:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646874984;
	h=To:Subject:From:Message-Id:Date;
	bh=DUmfXeUfRbO/YWCc4VEygJ7k+eRknzcbZ0QIUe2XReo=;
	b=RftS8NLWQ+Get95czn1JLX6hx7Tshtjye+JppcI9QknTW74kkN0j0BQZo3VtMyeh
	ofq+E0NoX2y2SfpLIh/T30cJdTIGs8FGkgct3Qv2TKVFKBSGqmKjOaOFmfo2HSuI4eb
	Wm6S2XO9CkWYFvUknV0MudmBXvP6BKYqF/Adc89w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646874984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DUmfXeUfRbO/YWCc4VEygJ7k+eRknzcbZ0QIUe2XReo=;
	b=j0tR0Eo5k9IwemHoiG4a0h0jEaFQoFuzOBjXMp0d9krid1VsNdv7nQ2jxQq9B5Xr
	qtT9rAc0koYUC4Bq93Z8ahg07hXPUbsTLDqS8FZBYZ9/J84CtSaPG+SL10WD0e6hbcI
	l4Mrq3a9iBoa+mJnL4CyBjclDRi9/BZ3GOENFqVs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f71660143-bc145c16-b87c-40ad-9488-b6d214a24971-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35c0a48c7ff9a8f1347007852b4b98be1b3ea65100681ecaf86b4b5e328a237f
Date: Thu, 10 Mar 2022 01:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646874984
