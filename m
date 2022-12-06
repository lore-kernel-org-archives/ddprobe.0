Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFDEC5664
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 19:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F803C433D7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 19:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670356254;
	bh=uvhZqjkxIkQxYGobri2g5mIV4FBVId+2O2ilHo5vw48=;
	h=To:Subject:From:Date:From;
	b=Bouj16SjzzBO6ebU2ft1cJfjgQD4zX98WiaUM/R8QjTxJEKHuLb2FF1cBc8ow8j9+
	 W2MKl9fXMzSbCWyAm0suqZKKk0YEhsqojWsD7M76F2AWEpkisiDi4MoeTwy0lWNt9t
	 PnxamHPb6GJquOPoO89XN10HyvugbBO4PatFl1PrDKa4jNmFXc/p9MiUQNpkX8E5T2
	 p2s0kQjljqRQKvW9x6jDBGDl6MwnHlKGPdPKHbfj3nnDz0dwFheJRazwOH0juwYdeA
	 Bkhy+ViJQD5yRN1sk6j6WcgypkKrird0hm1WSpYWBm1H+nHtPOEv05NLcl3ePf9i2s
	 LXFlmHKqZv89A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67EADC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 19:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167035625440.4808.11921040508189545306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9aad63a143f7b13f8cf05bd9c735b923c27018025c63eff965ceaae9e451c68
Date: Tue, 06 Dec 2022 19:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670356254
