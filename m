Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E90731B76
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 15:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646493385;
	h=To:Subject:From:Message-Id:Date;
	bh=7Zw/8zbHtcIJ09oAQCv1MekPf5OeOigeyRXH+go8km0=;
	b=C9zXKEfc768u8fhi1TYdMXu819L+iU127sThi2Mgp3wmAPyKeUYR8nqSB9RsXmpU
	Ty4q/SFkAvxUeyEaAuzw1dEr0ujABbQCSMyKa1tN/37nBZtKEVedSPaJ+70J/O5EDU4
	Xr1noPCQ2cZEnvo5Lz2+sxXM4ZSwxx2Qr7jZRCpE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646493385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Zw/8zbHtcIJ09oAQCv1MekPf5OeOigeyRXH+go8km0=;
	b=iwCYJjjQgkOKkVbAIxE+qyTYYI0TnxNtDV9D3g0SB3VyqJ7JSHOOlz7xLtQApaGM
	OEqQ/Jhv3p9x6irhpY97aws0oY8m/+xIJYbLZxSkBMpuSFrb4xecOWVZnIwebuIq84N
	octtnJABDJUaTUgM18VbRLuc5yvxw7zF5Q94AfAw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5aa74076-204b0b83-175c-481c-85b6-954e5697510b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fdb212cce646971da15e0178e4e09a850e23b76b429e8aa7a59bbf373d4a1b05
Date: Sat, 5 Mar 2022 15:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646493384
