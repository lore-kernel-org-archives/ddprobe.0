Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E47D1FC4
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 05:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/T5vD/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6432C43397
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 05:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696485368;
	bh=vnMnOgJ19WI55T26n685h1FPw8jGSsgmR1YA/Hinwfs=;
	h=To:Subject:From:Date:From;
	b=b/T5vD/2HOY7LSA+oniJW/ZAtnvciPhrvdMuOy2q8w24h9AjslakUeLd5BD4gFodr
	 b4kdAQ+pP2f03cH7YsmiV/D1HXrtxixCZ8Mp2Bi5B1752sI37PYIRqAjTqaMQ45Fv8
	 ZA0HK4CCCvAtWlwh0TjwYymZx9m/odtvnFau6cbqUA0EyvOrp+NQSh9/Vc/J4YS63k
	 BjN52xUG3YEaoIx32+TVgVvoeVr1pfAUerLw/gc0OnfQEnXD0cagK92pBqghihcfTZ
	 sqBVsKEDUUmcCYV2ZJw7igNPKs3jB8jj44IhVTtMGlwlALmfzd4fKeW9FmVtutPRnK
	 8FxgAp4gv9JUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECEEE93701
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 05:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169648536869.20681.5035395853280477116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c6b175189813caa7b862a1b7313698fbfe639752a40580f03c1f78b570cd70e
Date: Thu, 05 Oct 2023 05:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696485368
