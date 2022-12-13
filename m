Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A5A2907
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C433C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670928087;
	bh=LJNDD28nTBg6tyN1QCObox7/m3XJaPySygB+yr6eHyc=;
	h=To:Subject:From:Date:From;
	b=qLLTWa0VzSQL2TXInii2K/lx17kv272HikpXHSaAwhCSvrq36u8wk0dLMeRX0xml1
	 CWr6MXpnrHQOo3iawm1sXBWa5Mjv1UV59lqehc7yc7isYXgQSNXIlzrqiKQN7C7TiJ
	 OBlXj7NyOk4YUXc8a4kCH56/3VSPhCX2uE9q7kA1QX/XFZZ4NR7gL0EzYxAoYTboX9
	 Rz0PwQ4kBkWeBc9ol6a46RebX1YupUjyIwrBXuAMBVonSZTT9Istx7jdfpHVdGnAng
	 HO+I0C8apnbkU8Dd1H/ydZxZnm+WTRVeTibv9CCsE7jUe4mj1R7+HFX0XsdIepRTOL
	 EeuGk8IyEkdjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DDEDC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167092808737.6152.15753486476280468620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2827ab5334b4a607f3c9b118558d70dbf5b08ac1bb0507e57ce080333e8482c
Date: Tue, 13 Dec 2022 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670928087
