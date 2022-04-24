Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6A77A
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 01:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650763678;
	h=To:Subject:From:Message-Id:Date;
	bh=mkaB/WuMKRInzOGC0zLTtUi/KBOWb0TV852TF2fkkpg=;
	b=eC42kJL9ti4tWq3Ib38OeBui5xGSYIw0WbsYNUWeEoCQqMdhDnYgDWpQPDWXhS0d
	nbyU9D4J/Y+GxJkm67BoP/JKERCyz4bmryArZneIc5qpTdTIn/KLI4dlLKyTBz9SOWV
	nWZ5Nldhu7wNndoSYYHmlnLvup1hzWk7VachwMmk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650763678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mkaB/WuMKRInzOGC0zLTtUi/KBOWb0TV852TF2fkkpg=;
	b=UhHH+WikFirtEfWN8TkQNXeKHrHGFo8RVMPPDF2RBeIfFRfjVq0DMaaw5BMlM382
	gMp2tgBUhAI8jPsBGajOSmb4UxZbKBw43kon5udsX6psHghFQQZKrlt6fiJIwYjtvV1
	APS96+8WNmQk0u4r1gdpiRD7gJnB5ld8wyyUXHeU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180592ec26b-d2e432f6-86a8-44ba-9aa4-9b57e14db11a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 623b43a47f2751e6e67a6098003d47ed4746088af0203d96b6ee997113b8a71e
Date: Sun, 24 Apr 2022 01:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650763678
