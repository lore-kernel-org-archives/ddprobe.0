Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B97147C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 735E7C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662639053;
	bh=k+mbFeULAl7HTu3fhTDEdCU0saC5wxdPsZs0g1Cgdec=;
	h=To:Subject:From:Date:From;
	b=ok4WUP2JLGwly7s+YdaRu7ZnEYHib5yTkdUYf1zxNJa8OiNMYlHOnI4/bwMQOUnLN
	 nLVcyjOT0ol9rwxPGn1RwxOYO8opBiu1UCBfOyFk9IX6XV5KjZiTxXT6dKshOysnNY
	 Dq6sXE3Fe3E/hYft8eUKWLIvdVX60klQueHTYPtEjuUiakRKccfpRN1/U2HC8XP2Op
	 QoQZI3098ZJkooF/7ytMAo8m913uI7MjeCXC/pQpoqiBqOKNHoH+22Y87ol5oXbxBc
	 bFjvSNH8Py94CoJClW8kTHenxkDrggYc8yJZjq2N3939fyKB5Mz/isS85tvZhDZDJY
	 LoR35bufZM6PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BB1EC54EE9
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166263905336.16591.14532144288571760766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a402dba0297fb78ac67d9d3bd2301c3887e5edc3407c6d78503529b09c7b4c
Date: Thu, 08 Sep 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662639053
