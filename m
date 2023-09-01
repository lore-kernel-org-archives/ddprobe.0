Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83D17A924
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 10:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1398C433C8
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 10:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693563848;
	bh=M7icjuL/nBkeQwCMkLO+mVX5cncSDTffhqA1IQeqtPI=;
	h=To:Subject:From:Date:From;
	b=f+/WhL3PiWF+wcsNyshXNs2EfUL1a2fHJ/6nglqRY9FN4YBTh4OPu4XrkLCZMsBvz
	 MyQhG95jPTmn5rfMKVWsuPrvonqjHxJoLi9tOGNzqxUk9xSZeWu/CaYA5rEqxc5WG6
	 T4HnKGVzsdTp/3cG8K+VExnVu6QCapOC/+EEdOdK9PRWlM8rWSdF5QviMHjBgBJHVb
	 L+sVwXJFVWiL7d3fsKgS5nCuLfNlRDLXRfhAXeX3/K+g3C0ITDQo6B0Hs5wTt0St6d
	 lMZ+HEhK6UL/TUnm6XuKCIYoEqarOaik8F9f3xWHZQlIZHHWdrJDfDysXp35rTDtm9
	 yhTjquas0W6eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1104CA0FE6
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 10:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169356384877.7465.7825166574826263320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d2c098f1b84933006c0b1c31f71a8fb94703dd3b001e4eab51fab8f9974b000
Date: Fri, 01 Sep 2023 10:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693563848
