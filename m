Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D30607A
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 18:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646071285;
	h=To:Subject:From:Message-Id:Date;
	bh=3KvPK1mHSFW9vEy3fzuvhY5+igkmI3pdfrIp5CxPf9E=;
	b=brXcE2owWFrYfVt1Ed8BY1tyBj0piUhXadcVS+y967QndC9xQClTz5ceonZ9kstE
	7VVHAfaQIzlpUzc+BaeDnKZlhcemd8Ocz0tnuzfA2blumCDuiIWyoctl/2iMRHmJAeV
	CIea/qYZUgu3xFEX25N5lsuqs87d+sac/lPodqQc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646071285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3KvPK1mHSFW9vEy3fzuvhY5+igkmI3pdfrIp5CxPf9E=;
	b=h/oogaTOd+pdc7Da7zjwD/AbLFs7LuHsZf5eqFy1PAM+PRcaotpZusvvfgZ+bCsd
	G/W48oSQYIMPy+x2jpsLgSZ02f5neS7QE+ysLWhKpqC7GPDfXnoWZd8kN7zhP+ie08M
	vJr/W1Co1ShhsDkCnl+z5W6xb+z5GiczSdVbTmlw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f417e8422-2b36d4a5-3f0d-47c5-aa0a-289c527c42f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29e45833c8cab3dc3bc726e1a4ed240d5e08fc8d6f514bdceceea9feeac391b8
Date: Mon, 28 Feb 2022 18:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646071284
