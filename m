Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5507C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74818C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663666853;
	bh=StlDQRmKeSw93UqAJTcKuQbSBDv5CZnnT5rDJZooRbU=;
	h=To:Subject:From:Date:From;
	b=Xh9AQkTrn8dPzLtrBZTX+w3f1Q4wLHyLyhmyzH9l5LtvBX0TJPxkRad/2zSioRSEm
	 DHVPuMmAJA2gX1dWAi0x0RyeAPgYFvwt8ZLi04iAeWiF0fPOn9lYN1v+I2LCasN6Zz
	 mAnmnTwoIg19o3ov+DTNK9HwMod02pPC+r97lsD3i7HzMEqItk3cZ7NuGZR0WFuJl9
	 3+cnlqn+OOsCAWtrTPPzrMiHZ95w1qST3uFZF9fcfM7k9SKuV0c1lXAsyYPTr2v+3B
	 rKnCPafC0av+UJOvRyvi9sWCu4fr0ERsV1ZXoLp0RTa/hO45KJStyzmXI/Ymaq1Eqt
	 Um+K0kI7VwvHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5198EC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166366685332.12407.6121446137238241195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02189093e4d3018eabbebf21686d883564e5dcd9bdd531a093483614e64fbd9d
Date: Tue, 20 Sep 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663666853
