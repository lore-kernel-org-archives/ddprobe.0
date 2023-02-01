Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E70F7F4
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 04:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF71C433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 04:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675226645;
	bh=dNxnCDKSbzYQPjwr9g1vdXXbAzuPFmtYZs2s8qS1KiE=;
	h=To:Subject:From:Date:From;
	b=Svrib3vJE5Dt1FDBE5ApoeRdzmZ+HdANybwwo5XVIxW8GGmK6pIDO+8QV1pfhoNG7
	 +RN4Rs6ahi3b/1yMMtFCOOcRHolCpyHgQACtvFS12jMc+maKo283x35XOYgHjRKLLs
	 h012z8dGH2T3KsnLTNH7UB5lUJUOF0JG/ydkqFN16G6EDWF8CklKsrG4HPEl3K6Hv7
	 3xoksEb6m7FCfNHfghzMiI1hkzzo5UfxwEt9U/iMb1T9jqb6guMv+ikkVgyxlHdcn5
	 coRf/nw31m2qrOpn0RSwmU0R+EnDwDUgGfGUtpiwbuQfXxUqm2slcF5+ND4vlxgxO4
	 lBaVIdItLOlSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1605C05027
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 04:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167522664571.6928.7120617848537340318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e9608bff2ff39b5b9762c27c715797527885aa1703bca93e1e19e6dcfb95727
Date: Wed, 01 Feb 2023 04:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675226645
