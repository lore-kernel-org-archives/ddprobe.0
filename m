Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D141C7E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E01EC433F0
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671568887;
	bh=6OZZaK8U3jbD0ZC2hJnwLKP95BtGovvLNkc7qaJjAS4=;
	h=To:Subject:From:Date:From;
	b=skaAt5wDL7d6+mgZGAsLeoNxTE3xoXJNjbYEjvDSPpG9TTbF6EZQ7J29tDCD/RPWD
	 H42w6/asSbBZmRVdTMQ8NuGoJ/2b3/YufdKHrkzGnL8jjkFtHS/7cXgvgC01i1kTUF
	 H3iuOknXRUw4C97JnkekPrp+1RTrzN6Iw8Ct4N20jIjCE6hYhLdtdJzbOXmDlnV46w
	 3XDjHGz3tVRo5Y/qwYUP39Kh9PdHWlnLJ/SIuTVBzHvSKdrWd7rBJ+JBCfzJ8Jf1qv
	 X5iCGvn3ge6wf415FqEHV4TFEBJHjJcOt2/3iQDrhE8Y8WDX+6lcJd2zsfANCU/fd/
	 SmWLS3ojmWWag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62812C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167156888738.29227.7191896362705521658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5204d9f21cea5e6e6633f3af4aadf0f1169acae1fdd50569c7bc556f727328e3
Date: Tue, 20 Dec 2022 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671568887
