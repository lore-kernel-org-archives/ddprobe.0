Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8F0C811
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658845853;
	h=To:Subject:From:Message-Id:Date;
	bh=ss5OQTruWP4ao4hKId5JbRCQdihPK9UJOjI1CqutYsU=;
	b=bq0fkRbQPhsldkQQX8TuMiwC+Q6ZVZGAvQpveN/fliwFYioxYtRnFjA4DmfibcxP
	LiZcPJMOQYvCIuiI9J+PsEKcjeYRmnho6Er48r5Z4lib8Bar+nTNpwvKb1sqZA7NO9Z
	eSA/VSimLswtxt5benT0C/3D8k0oQrJotajY6yNk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658845853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ss5OQTruWP4ao4hKId5JbRCQdihPK9UJOjI1CqutYsU=;
	b=gdrXmkvIFc4HaAex4gswVtmigUgTpf1hsp8GZHjuRlSOsbd6sT0uawkqXes6QvOv
	ublwI8e0LIlRwNM0D/eLbQilssCbjrVCEfQ9wRa4+IaQ6vOl4Stj14cVQeo9G161wa7
	ShwVJhoSN7f2qluUoA6gZnkldcjxrdzgnG0EpyK4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823aeaf399-62471150-6eb7-405a-8a59-f07092daab39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50b45b3fc795cb0ea1b2d0f4756d63134b43b2648bf6f7906bc6b6c2fa34717a
Date: Tue, 26 Jul 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658845852
