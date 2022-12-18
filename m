Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4418632
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 802D5C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671323487;
	bh=c4+86ivhYnZQ0Ab3Y2hnBIHZZF9kNpehu72IYsEo3i8=;
	h=To:Subject:From:Date:From;
	b=C5VNAP8O56IdBCSkFAoXRrGKbgZnRjL02NK9BcgNOL0HmJK8PrH7OLmmBIgv7c25E
	 3drt4ThqB+fNCrqvEBgl7Dc9eP8+P+puybIgUxGDXwXf5k08J0EKnifFGurEEkuzs7
	 bmRWPmWUaMDzxlrc2wgvoM7uan3v2uWbb9VYTORBEdhKvAexL2js1wenwr2+aqu16M
	 i1ES8Wa+6VQ/0FLQPREMUSIEf+B+itmStX6kM0976+K6VTSAi3vzbIHCoeFw67BRIJ
	 odsSgfM+t8f5vTKu2JFFs2pH4F/Ijw+xuKi/t7HTJjqN5uc2fl3m2CSVQyZ7PfVT0y
	 7EcC2iZkZk62A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65045C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167132348738.5752.4976964701736948277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac852345be88b709acd0f0772fea9a4434f8cedd00e602ceb9db401a0209508e
Date: Sun, 18 Dec 2022 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671323487
