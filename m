Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4513D13DB9F
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749940794; cv=none; b=jYdn78tSfHkasc/chvoEjJoOdTsQU93q4BC8noZsUkLHbEt3qB3rl8c2obLNNIDjBmXRAwZIhb539kdjh/Dxxb2EuMjytgz/5pryYGCd+lm3tbC8Q5TK7KnIf/ytFyUyk0Tm2fq4fvnv56cKgmAk28UCLdekXz64gmq9Zn56yGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749940794; c=relaxed/simple;
	bh=fOsXxloLS3nMlzezTxiz/RW9JztZ0MGStO9GvcO+6iQ=;
	h=To:Subject:From:Message-Id:Date; b=P9qiFR+wkfzstKGc4HxZC3BN94RzHAjlFVw0cyiAi+87pNSHDpIt/HYb3k6wiBN5v8wFl4nwQfVwr2ewD8nw2zXpNWwz5o/2TvdRzSYN40flbHqOtaNhmex3j/4Rdr5VCVwlLLt0Tpgpjl6GIArEUaY0FXTDXJOrQxoTNxGlg+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJQKi6/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJQKi6/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A380BC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749940793;
	bh=fOsXxloLS3nMlzezTxiz/RW9JztZ0MGStO9GvcO+6iQ=;
	h=To:Subject:From:Date:From;
	b=aJQKi6/r9IsCSPkaMj3CHvEdoz3FDpUzIeDj7Nl8n/qUcdTaB7uegjiPmP4jrRAvT
	 QA8xLSEO6g9TaSH/EQfu/O1G18JL76J+tqWAQqAIDLxTuwvlf4mEXavGCu8aWL/pZw
	 0+Jvb986dadRzd6JNEh1ZGcL3ZcBE0VLIInPVyCzGtW+7k5/0q3xphFUhKCvpnb5sA
	 86PZbhX64KB3p6vBREaeMrfBY806cppvxjB6OgodN2Zkv2jzfYolN0w2Bjh2H5QU82
	 2iocQTAWvCMjFOAbkATUYjiD8RfflrDTeFuiqzkR2fqJpD1wGuJsChRV7RKLJcCOGB
	 e6WA7VmKP2j0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902EAC7114A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174994079358.15093.13781963209829129861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbc24bf477954f60450f9d6ac9645b0d306912ece63a659c10d759cd02cd67ff
Date: Sat, 14 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749940793
