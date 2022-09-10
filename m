Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17BB10E0
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A50C433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662817253;
	bh=CWys2migaTB4ZH5GRnRZIR7ndE4iuQTglHJgXZvDcV0=;
	h=To:Subject:From:Date:From;
	b=CWHGf9YiemJrqGynY/uh2+JAEblhCvTC84US3KggIwMqmvYKvi8XJCYEXA04VeoGW
	 hp3yjTZVOZKo1no/BLWoFwZkfd4Ezh5d/6b/+08rreCoahAY3MEkey4ST9NnzqF2o3
	 TbbIuYjunclChzECNzXx7AYGWYS1n8vBLs4p/Oe+GskRtthXf9BoFUeAYrpEBduD6x
	 yIFqib0eFQcnONOgGKJV53euNttwg5YfS5aXNNQ32YCmzzLTPTXTMt22KS73b0nSed
	 biZKC9aJi2hEuuOCZqcuwiPTpT466pzdCYnoe3aNZCe4lE/3jB2lhlQC5wNcgwb7fU
	 9QKjJAY8IeOew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59908C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166281725334.27500.14477966994362080452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6babed9915bcce11025bf3d9ef602e7d59977f1dc058624754f45ca756119128
Date: Sat, 10 Sep 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662817253
