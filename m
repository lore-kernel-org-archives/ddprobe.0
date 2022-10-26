Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3BA27B
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EF46C433D7
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666771253;
	bh=PhjdBpFdHGvrxLBiWCO1coHTntJ8coY8BVLl/CyjaM4=;
	h=To:Subject:From:Date:From;
	b=Vyw8xxQWspHbqdoaGSgAOB3or9zz92jRBLDsjURq4QyWfYXsgNoUmtDo+nbFUofyD
	 +zrIpxx6knQm0+PzUPYBUCJV52edjlUR1KO52nVY5NVACiQCTZbabEorAipZQgagLa
	 8Wo64a3DyQCDsRiVAow2K5dftBDn2X+KJ13UfCFXry2gGizu7ybu4NP3UWeyMMo0Ap
	 Tdv+4IX0jtyafeQU1EnkYdx390cmhXP/DqYuWL0I8kc6kIgQbcftCP9dSIeb5GDnsf
	 PZpe9tAJA6clqhFfsLCHe5QODbDOZuEgHFgJjCkJbSWebiVWFaTcZGN4sf4GxwbFqU
	 /WE2R9L6W93cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F1CC433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166677125333.8998.16818092066328653909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfea02bf3f65fac7c2dbfba12273aa7963b8036d0475d17978971de7241fdbcb
Date: Wed, 26 Oct 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666771253
