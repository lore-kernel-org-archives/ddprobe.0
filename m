Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAED06AB3
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 13:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B0A9C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 13:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670334054;
	bh=RzTXcZ8kZbloF/SPfWmSsYOG+7VO9J2D+NW7BkhLhu0=;
	h=To:Subject:From:Date:From;
	b=hGnfes3+t9kSgncBBvHcdTb1vUi6NqSWxZmmx9J0pZW/3mEwG8+11K9ZteyFPQlMc
	 IUDwbQ6d29lhxmpLiCOWHnw3ooh+XoPN498Ne6MfLiEn3ei+RturdOetAHr2C5ZVI8
	 8sk6FcGoIv8EAeXq9Mbg1YC7yKjGXZ8PL9BxnMDiVsEdZtSnjOYCDhZ3Tua+qFbG9Q
	 RS9OJBQ3oahJJP7I99xAceNASYl9fEpNvWLnoubSzLAKQrPuIohdDSBYaMNoTBmRqX
	 pz8/PE2WUBFb1H2w/CGIvUzqxsl+etvwCZV1XUTQUna7vOAK5AYSZiZrzQSa5funl0
	 fSWa7w9FWnqeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57BDFC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 13:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167033405435.27454.6340247520972463526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d39927634ac60a902aa040989ccaae2e1e89e2762e78452cebc4655ff771d3d
Date: Tue, 06 Dec 2022 13:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670334054
