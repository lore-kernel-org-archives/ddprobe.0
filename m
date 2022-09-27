Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCC76468E
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70BE3C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664295653;
	bh=mE/P+SAaVlaPjhVtvTysTYSQrcwoAGLl3R/iR5K9cvc=;
	h=To:Subject:From:Date:From;
	b=RLSay1p3LLnSrXSua3X5wGuhNWdRUisJeos5ACA/fmw/aWAhxO9xRYxP6X5ngf3oi
	 UEGCAvmFPwRPV2nE7OxwB1v6Py1L/ZpFuIhtwjmzBKPdoEyt3rskh/Ttrmu4y6Rj7t
	 KIfU61ckbzi1IK9zD+mnvJYpmAJk8X4Sd6FTCXsYF9Nn8D0rWUAqYrwvz8I+0ZEnya
	 1F6DjgtLLMBva0xwxoQkNAVBy/COyGWoY3QqVt4D5exJHGATIWVMecw+0aHPmrSjBj
	 52pZfawvdfX3gLYzRIIRojzmgnU+3hCtM6PCohfhPTsDQJhshJB2fWNdq1GwJkdy8v
	 r/evvJlrBaZqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C03C07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166429565333.26457.13343868237494056593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdc1c2b97a3e789352439e0c08c31d2f48d9275629265d3ac1ff3e8cbf363223
Date: Tue, 27 Sep 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664295653
