Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231077B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 14:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655562299;
	h=To:Subject:From:Message-Id:Date;
	bh=ZnQW98lhnK6TiEYpND6P+OI6KQY6mINHnZvV3TbUhrI=;
	b=fww9wrInkfkg+qZ8vn28tRpiq2b6/FgpXlQTg+52d5k4+NH2yn5sEpNTHprjEapp
	bpuddW5/0Kj/EffIS5ouaT9RRf6XkKzBJ0Re3v8+YyQPDN25vLSnSe3KnmKSvOk/2X4
	PzDfe9mFZzCmhCGZqaHK3nuzpTmEqzrq5ollak9Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655562299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZnQW98lhnK6TiEYpND6P+OI6KQY6mINHnZvV3TbUhrI=;
	b=OHw0hQ5QYndFWO2l6ewUb074wqvuHZ27t3MKi8ByH7TZ8+zW+gQyo7iJHgWok9nP
	eqn1b6a9CxkL8VshOL4t4v0L630Rvg7KdbGagUHp/JT6M5U3NiM/DVU1hjSbAMQLLHw
	WPlnSKymQFLf6NBAgHZ6accM6iwBb51PDufjLHUQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817733e772-8c769558-23d0-45b8-8300-26838a0bab4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2874912fac2b15fa404375c1ac9ff25bd7f71472203f6f15855bfd4864c62e18
Date: Sat, 18 Jun 2022 14:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655562299
