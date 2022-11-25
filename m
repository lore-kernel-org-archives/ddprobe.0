Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C807917C6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7471EC433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669355454;
	bh=/SvsFaiZfbOdemXRNKfDAuHIOHU+mhlT+8NBuE71Wtw=;
	h=To:Subject:From:Date:From;
	b=IatEdyyXNwAKLn0cHFN9C+lJgL/o3BZzQQsw4/WbQhgPc/YznksyMWdz/aHPi9xNV
	 V2zvceml9l6UTy5cJiWo2eybndZgfNk3Id7m8dJnaTOr6lS2qk0AISZUrtIWBFNoi9
	 dBYd3xttRK+R8QfgcgOl6shui4NeXWw3HOF5wxdlvnUX/2MlLkg7aGkvXd5QkjU06Z
	 ZEoVUhoHxsA9kRh/uKT8Gdpz1+vhRY98E4kMgkgh9b+81XIbsmOsuCMfaWPB0P42EY
	 TUSTFzGw0feqim5P6qKnBKkt0NoFQ5ZwGpmlYOPD0B0H7MzmnnGlOPnlQ5jcwG2Xn7
	 IJiU9qYfNWAVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AA8DC433FE
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166935545435.5167.17277682890580534119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2b1162990b20e9c58b4b54e04c5348f6221c746fa6729779ae34809d48df23a
Date: Fri, 25 Nov 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669355454
