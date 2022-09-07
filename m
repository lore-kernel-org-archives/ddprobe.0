Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B634489AA
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FC1EC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662573653;
	bh=Zcc6uY6ObFjpsHn5GG84kcufq1bvP7T6patTxNCLcWc=;
	h=To:Subject:From:Date:From;
	b=YgddxHIiv+G+9GjP25jyRwVQtvWCA3czVZLxEzg1S/0GNw8jPJjyzyfRRg0PE2Tqz
	 V+d61CVpLuVlIuy0fCqMhxNcnbKB2TT5LmaMgjO6fAhh33LUHXGCd4oM37BqTLMr8y
	 4Zu0evijcD9FUr6PW55dQprLVXKTUJzVyqJ0Ahos7hY9hNrEV6OBpCdjCc5DvQRsyd
	 MzTx5cK/6t+tst75jt/+obnudIf002ujPaD5yBZhVABgZGC+p+QMeIE+N6NIWJKLgW
	 HuNRLmE4ge7aqgWPq8s97mMt5loMWCQfl4hUKrrPhnFlmJg0cNAUhwV1kqb/FKZp+S
	 IPv7N3eTwzi6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56569C54EE9
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166257365334.30615.11357497075311275386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735f300174e97d161ebbd8abf61a9c2043bc9b414318987e735570949c12ccc3
Date: Wed, 07 Sep 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662573653
