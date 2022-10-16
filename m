Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8FF07E2
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8181BC433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665902453;
	bh=cX66ZYCyFkmzbCC6mOcY6GL2ff30B5XAyjxJ/1v8d5k=;
	h=To:Subject:From:Date:From;
	b=CSKYVkTOxhfYSNGMTLkepzirP4phf/mbiB85rraEisvsJgAuOYQJtiNh9Ub4m9Awo
	 Caj6Q7iAuoZTbK0xWrtwtgzGlSz3Fhlak4xbyzxNdVqkMI+gkXN34S403F2iJTFrWh
	 LdPWCPQieSI7j2a8lKezPm9/fI7TtYWXjnE/nWZhSeLsj5uZ+adilf3aUF/CzIrtbK
	 dmVkg5jvaY1L7n/Q8+lgwEDPRCxZGAs5abZACFlss15coYIIhzBeQ0/NP8AS8zyMA3
	 bgYNqDtvOck9AyKXa2T4nbcGJdwaXEy0MubFQUys6kTZuAzPOTjSBNUVkbkkV2mEp+
	 epKOvdhn8EbAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC7AC4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166590245334.9614.16537634519446746438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b895d405b8bb67bb2dda6a238d77328031de43172e633da41620bf425285de5
Date: Sun, 16 Oct 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665902453
