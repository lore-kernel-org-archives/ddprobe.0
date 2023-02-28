Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311CD29AC
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 12:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF65BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 12:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677588365;
	bh=XIswMCEtPCqFkP5EJM+EGXrW3CVx5krkPxfFG5hcDow=;
	h=To:Subject:From:Date:From;
	b=X0UwfsAVySH9Aiu/ATQcZMLDUFnJSTaFFbRdHkun8O1X3P4fCAsQuNGIlw+YcMC3S
	 Jrllz8bNry+Gu6EhN6mfIdz+ds6bBQdwP8HO2fRTMyQdYR81bgn+s0+YHMYE65YOrm
	 BxSNrfjWnzXO9cmLovjaTejVqZWFJ8nJ1Oj2vF3VAb9Bq7QNtVNCqQ1lMlwh/kLcUy
	 9N0dXTV89PNglJ6BQ8RJNU2jVvVvNQjqAkxDHIMWtmOUFQJdEjHbgiHGiUNgTj9sIc
	 32Ly33yGzi79TcEG51NtWiZtr9ewJwCv1KQvR5GXQWIUgPZyV0bhkYMMWViSQ2t+qa
	 9SzvpOT4vFJKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E0CC64ED6
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 12:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167758836573.12493.5036911791144862538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1facfcb897155e0c1c8da5ca9f0ef24f3bbde4575354eb35d391b708441b542e
Date: Tue, 28 Feb 2023 12:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677588365
