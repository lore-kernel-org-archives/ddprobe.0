Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE46F323A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 13:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645969585;
	h=To:Subject:From:Message-Id:Date;
	bh=4RaJlAn2lk/gTKrKhHQc6fq8aWny56xkb4Vt1SeA/Zk=;
	b=YriEGnE7C24Epg9FtYdDOBeDDv1BWCOzC+V49CdeD42OLzIwii0ZgI/gvzO7Oapm
	W458kc0HJcpS9lyhsvNtFPP1yWaVMSo8CpTXWjOBptHtkt3rX9HtfKMVzBk2dTgaiDd
	qXeTASRZQ/KnRoXJtWx1PVBdskwTfBFqn3DpZEe8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645969585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4RaJlAn2lk/gTKrKhHQc6fq8aWny56xkb4Vt1SeA/Zk=;
	b=aNZAU5pYvdw4RpxWUiFT6izQfpc4L3/gFVrF9Es4c5APkndO72W74mEwZ3+SGRzO
	GYVFLianBL3SH95UDREJetgaZz8CrvsLNZ6FRC1sfrsEDDddt40wbouSnNEqeAF9Ms4
	PdXHUO4vAHsZH+i80jcXCJycYHnVIbcF5lPIN9fY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3b6eb26f-c0e36866-dff9-4c23-b606-14e4676c9d82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3ea3fe492c9058dcd49704ef3834dbb78b70447c849b6c212861694d2533d9b
Date: Sun, 27 Feb 2022 13:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645969584
