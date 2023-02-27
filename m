Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274227EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 07:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8365C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 07:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677483365;
	bh=blU5AJvRk57QMKKcEAbk0/RBm8YYm3qiU+ty2OpNHiQ=;
	h=To:Subject:From:Date:From;
	b=Xwz2roIK2naskgYfOuEDfMfHsPEP4AiTW4TDkeXZ2zymXQxc0ArsVwIBAua7mfg/g
	 YKfJuHS9OHdadTNeORJqkeKGsepqTVMUoWp+O9N0lH2nDnb4oH1JXP0SDKPOcnmgM6
	 EMDwj3KS50+UiZ7XspfkqwuCTa7kNIvzG7c2Yteye3zlvONh2xcUtQlfj5cdTRQQ9v
	 EHUvxjo6mIg7dtVCJ+XvPZGxpiIOnGKalUCEOUzAe3/2anR7FVixbZvQQbdBsRFQQ+
	 mmnsl93tLRO0+DI6JBMhC9Augo5MfRGD1CDKWORC7yLOCzFabeKbso6y7JUw9k5oBK
	 fvY5ZpDqmcZUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC089C64ED6
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 07:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167748336576.7965.5480520427205162691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a20dcf8c90734cfab3d3166a2e507355a044a9895432f22c8d79c5976ae1e1
Date: Mon, 27 Feb 2023 07:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677483365
