Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F1A7E4
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 22:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0FFC7C433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 22:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680044106;
	bh=+CMW+KuNYheRyP5VJOw5z1pwbqYpmWmlJxdprn5HP8g=;
	h=To:Subject:From:Date:From;
	b=t599qItRTsKSekhh89kFnKeCQMZ4bKeKwVvrrpqDzUEquVV2D8Mif1sigSCm7Hhxg
	 bBIefmaFvuW+EtVwmKGlsQOIwMXJiJKH1pzU1VDeOy/S+JHFk0Df9psS052juYT15q
	 w4gT4cSEkBgGSdnluaK2rKHXcQHA5B6MXGDu+VHulqYD1fcw3pEAgxUhzzPLVphJSR
	 ktUkTGBIh/4JHQVrO7Ofg0F1wai/ecqQC01vEdrSYbszmgFN0Yn+SPg9Ttd3b+zxKy
	 ZthxSiE3yjGNMBpCTmM99mFL59swzmUHrEwljkwrX3PFUgZelCPb7fNaJCQLPZqiXk
	 lLsC33vVoQzxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD33FC76196
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 22:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168004410586.28508.12524422375219698396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67d402b8c2e8b092db6e5cb86b74ba9ff0bcbd04219c7cfd58c362c8ca5bb9be
Date: Tue, 28 Mar 2023 22:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680044105
