Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8DE1107A1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78C20C433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669140654;
	bh=74DjbQJDH5OGsIzBdQRtAokGaNzX7qTilTjue0QfNmM=;
	h=To:Subject:From:Date:From;
	b=VBAX3aLbtB4/CEvlaPp5D6avu3EuYGqOaf0PiVVgHMt+OB1Xaxfd06qZF8ZzBeWL3
	 wjR02+/PX5XwyZ+FrIVqpooNhEESoUpysXOcvl53AWq5SrZP5J6gvF6kRq/SXCTlp2
	 o+gKMREMzb+R1lsHxO10Cm7YSVffHONXG8Shn377MmDsMyghJv+sC8D9j/HtOH46I7
	 I+vz+1hmlYK5kkC6aMuWPhnvdkxvD4Xsr9g4JmotxtOcYA1SwSwHfE52+ytv2bzyFX
	 FKAlEOGHHlF82z/jLA9rRDEYkqAA7jiCFmjgcg5HaWT6hoChL+a6LGaTX5hFHNivvv
	 wrYyNwWCW+2hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54355C4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166914065433.6614.2949526652849036550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e040d235e902b2c0354db6dfe4cdcfa559858c8d929854e31f385b034758e86e
Date: Tue, 22 Nov 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669140654
