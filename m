Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB39DF46
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 15:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C64D9C433C7
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 15:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690213928;
	bh=5csuuh97VY5RaUijVF1OptVztBHr1Lpnz8T/yNYriTM=;
	h=To:Subject:From:Date:From;
	b=uOEdBreOLGJLfsfpo1lNwancOa+v/crc/N/MKZusmp8kSgM8pPs0rzemJmPqgaEqu
	 LLARYgFpQrW+yYK69JBFFYkgIRCVzgmTt2zLWSGa9jXl4kyHAjmPJh/OXP7SV70+lr
	 b4XYXqr8Hm8svSFORs0PzS9NbAhuBr1nwMuLLRCDrlWauj5vQeIysXvYg/VbIjUBQc
	 1NdNKroujRKfYfxj9RTH4VUsSiB5OINIQjzpA+n6N3SOw1LvODsq2EIbz/CoDl9P44
	 aHsAV1iEEk18ff4Wfy1nHyhK4GuHd2UNiZqDhHyNXkZA3pkripX4n/v2wWrl7WVneO
	 S6cQs2fxVaTZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A70E1C001DF
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 15:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169021392867.8985.17304412753456179196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca0b4229d61d91ee09c02296664a819fa44678875697036798f9c47bb440314f
Date: Mon, 24 Jul 2023 15:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690213928
