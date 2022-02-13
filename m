Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673257D
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644782453;
	h=To:Subject:From:Message-Id:Date;
	bh=uVzPfZFF/QeaD/xjHESrFhCcLKGgeDccCOVkOAsgsY8=;
	b=DdYxiSYcWgPWEXqYVuc2WKM5p7hKbWRG4XuiTL5kBrpRU+GOVG3b4CYcruWfEH9L
	IniKrwTBOoGU6JmSrIx/UubfXSiTSFA4K9e2Gz8Zrs0SktEhnP7zZFtH6pGHdrmyS9H
	AuaG83GGEnK3QHQtR3/ByNG5RB8M13IGga0V0Ajs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644782453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uVzPfZFF/QeaD/xjHESrFhCcLKGgeDccCOVkOAsgsY8=;
	b=cANEt8N06rUhGeCBAro0hI8mST7RPWmCkCE/VZZViYTLsXU1UsC/JT31wLVgOfTF
	/GP7ijeN5v6DR4m+nYSUz+iEMyAEEC3jpPh3aEJ3DKh4QO+B1meI2DVfy5du5H3okyk
	jyv7YxtWTK86P3c1kn/uR2/CdiRDJMvKdjzEsPLk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef4ac8359-5f8d2d87-6b41-4260-a771-1a34ccc5f5af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42a00dc9109ff52706c0b57839a646583f21e760113d27c11ff3e934c0885cff
Date: Sun, 13 Feb 2022 20:00:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644782453
