Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D38C2D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 10:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DDEC433C8
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 10:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691402588;
	bh=dy5sMDCOZaRCuCZQXjlmedXQxS+/Y7+pJyFtrpqly84=;
	h=To:Subject:From:Date:From;
	b=V+CNcWskOTZS9Sg4ghCzsmDTpDerYnUS6riFRppwLGkfxeo+zv2YhNlpuJ0/tyYGk
	 QD0PaxUMTb648ckADwzacu+K7t8f56pukis/kpfd3EnCEmM7cWDxJAgkibd3vLdwDT
	 CWBfkfoxDr1pbHkDkVOpomKXftaDtByFu30RQjWZY1Rh6e2grIoKnmoQBVM1s0UI7Q
	 2pScsbVQJ5jwaxsPp8J6JDy8+j9uM9r/Mung7scTus7uZ8p7P8KMsIeQW+9JRuuvv9
	 QH0l8D5xwZ3yfMEM5lBydkbj7+tISMGk4qz9pCOL8HIPSlZHMCs5Ylv8aKyL36jHQM
	 1OGZh/I0obrXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B68C3EB64DD
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 10:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169140258873.19047.10170911083932169300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c0795ebc4f81a86be19912a8e5131cf7fc92c803442f799f7ff58cfda7206c
Date: Mon, 07 Aug 2023 10:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691402588
