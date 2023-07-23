Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68CBCA29
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 05:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB722C433C8
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 05:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690088528;
	bh=neZ1aY+HdplW2//gmpG5yHxEuYo48G6VQkPjUPpfghs=;
	h=To:Subject:From:Date:From;
	b=S8G50S1DZ8wbBJ2jWouFQkuNIz2C1PHyfGxIeVpYwJa/Jjp/WkjXd3B3oJcm885+B
	 yiKqSk833UQ4+iKYvUOA30yUtdMNsaoOL4hdR4zPvW+3qs/lAl486kRif+Iz4aK/t3
	 3+K5IAgZkz982VecPztIr4qw5frWxgde5BWpvxIU9L4WvhBsnG1V0tXm/kBCx6zkkO
	 Kh62HjfRY1tjN0qQgGR61ohzEX0paWqk7voYg6kMi4aNsVFSqhue1P+viVQ6pR8orp
	 IdjbmJLVNWBBz6U6JH5VU+aE18oFZ6UjeWhqZ1u2pk0fEwAYd60eRSpRZ0hQXOqTc8
	 TuQdY1Ee+tsOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD14DC001DE
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 05:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169008852868.19263.10018388799387124882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ab1ba155aa54a5fdad76d46a5264f8d137c3c9dcaf3c2757cb9a6625271aff
Date: Sun, 23 Jul 2023 05:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690088528
