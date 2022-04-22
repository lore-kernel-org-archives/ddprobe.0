Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA8BB7A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 06:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650607738;
	h=To:Subject:From:Message-Id:Date;
	bh=iKyt4e42cCQB/aqUzfQWEwRg5pSpYcBgEUvsFSnXkag=;
	b=UOjOKXBL1igkoNdUY1ZI+mBGE2dEv60Rk/6zxeT6HfefeYiYPmaoSFKhRQOObhTl
	noVb4QXKXl41LkstT0hicEGFY1eCvr5pCsWK6M4Rg6kP+wmCkJdfpnhNeoQo8SNSV84
	FaJ2WkGoTpNz+dcKnNW3yuH/DG8jykLHZnQEZ8cA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650607738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iKyt4e42cCQB/aqUzfQWEwRg5pSpYcBgEUvsFSnXkag=;
	b=j0L45oxvDF7QBKStICJYQ40Vnykw0T5DvLe1sbBw5otZT1ljqCS/n5esARe5YFt2
	DSYM/u46nOYpPAE7jL+v03dOFzrK/oE49r3rBFQN7bzuLWPoshsIudH/yYeuz1shovn
	s2UUVvH2actmKnGhG1y4c9Ddl9pkz37SAAU43jcM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804fe34d87-594d975b-815c-4182-9c11-bdd5ed162a31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e661502607638a7a66c49c3f7f40972aaf88971e2f2c28530449445151d986aa
Date: Fri, 22 Apr 2022 06:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650607738
