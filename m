Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E13942C0B
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 19:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7295C433C8
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 19:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696016168;
	bh=7xNuuTmg9qbXqbblDdS1hS8FtABOgzJYWlw9ZA8h7vc=;
	h=To:Subject:From:Date:From;
	b=GhhG/WO6ddQQuINO4PTrMa3/RgyOPT5V2OFYaI5d80FPbCF/2AYeC2wvB3Wbgqr3r
	 sPtQT4NEoZ/v2GJOi7zMrJXPTRRgNGuheoRqfqWtAnqM51RUNycTfBYyJG4fsw9aMp
	 zNw5O7Gt4j/E55lj7QQIZ0FZF34tN2I5PaahbuVJdefBevwcQQhZ3QN4TvNOREYawB
	 IWw7xsDWzNFuvrPxEOKl54BRKtdm7ZAoQOF4CoC2TE75LLGxAJ8jKCI5FUAVqOZEza
	 OYmHUdxBkUBxESme55luFa5dORA98mkdSE4NNK05H7MpDDw3pKm70CVGp+V82IbN7E
	 nicVzj23TY+Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8325E728DD
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 19:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169601616874.11287.3881186978488857055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c82e7ef03edce7d04b3f4bf37174135e766f370c145dec5c20f24ebb69bd4666
Date: Fri, 29 Sep 2023 19:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696016168
