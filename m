Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B903D2579
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69DD2C433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665270053;
	bh=PtfRfq5oULHAnAqfsJZV4QTXbMoPBe678fKVbJOM5Fs=;
	h=To:Subject:From:Date:From;
	b=QuTCivM62ICIVZTfoEPgSvZPzoCjdvqzc+C2yuCaSmjN7V++Kxi1IrUks3ko5TYi5
	 2XpzLCJ0WFHg+qCnkc8rpdo3g3rQSNZdx5MNIdPY9TLMDUBoIe3Q/cz6v1I3uWnaQS
	 1u3sDa7yVZNg4xmsNi/KfpgS1T6e72P/pQFzUmRvUsLFqXFgzIQQvNbsx9LhUo0U6T
	 OX/5JSn5otdAI5zKD0Tb7gtVDeT4U22ekZjvImk261/zZ9kTS2MoLo6Djc+l1C+iK+
	 B60d8E1CWyFTssW/wJRErUNtd4jKUFP6ZGxy+WECJvriD5Li1JTZO+poI37gcRi3uT
	 qVxJ2/PfmAaSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 552F8C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166527005334.4312.13858504500039156838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9080d3896f32b38e753c96787881dfb94af001c185f8694fd939c334b3211f26
Date: Sat, 08 Oct 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665270053
