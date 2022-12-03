Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A3A1FB2
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6919BC433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670043054;
	bh=qudnEQBhKAda/wSqsSu6La8Ce0tFpouhQgkZLMTbmJ8=;
	h=To:Subject:From:Date:From;
	b=NbWGb/4cECZXquTzhB+RgiyK9yHjHYqhmRzfzLs02rQwdY2J3yHxGU/tIlK5bs6/n
	 3dJTMmyaRKwxyUnzqCuNtn8UnniI2tWqV1he0YgFA44RQT2ry9f/9tLwJ1FcvXdlLv
	 znszoZt5tqOGXvCqNaJdTnciT7iiLzXmlyOcSqTcvu1BWPtD2ObEgmmWxHXQ7neEh9
	 aSu2buoxwdUtcJbHw/xenDZe9qeURfVYkzdCGiWDlHBBLbh6llhv15h50Vfj5lvAJL
	 oqZErX75CyuLUE72U89R2hs763DfhF5IMjtAYbrrgLXW4aXdQ7e4zVGMJPlBW6yAp6
	 gb6CQBHdd4iyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50F06C352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167004305431.13091.17929809073747708063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62cc4dc5bd741cc752e04071cfbc55c31f3ea0da9fd71b1bfa61622d8cf2307d
Date: Sat, 03 Dec 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670043054
