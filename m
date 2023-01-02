Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D821917F8
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82EC2C433F0
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672638687;
	bh=kQdeQj81NS8lzFR7kjtu7wntr8eFixEQOERymo+GQ7s=;
	h=To:Subject:From:Date:From;
	b=sc3kIjU9gDhGKasZaToDHMsvJZwB7CokHrvO4HtXoSKW7D0J7fxfmMP4wS5eZmS0U
	 RSRYfYO5jusoaFiqlumrvCVQP5uxOPyrLSztfqkJqr3gyH/tcDoObLe4XC1g/N1hKp
	 F6MbsFsgn9JMt8UulinCxGjS13in7KQiQIDyhvz/4gJ4MXLSYM+nVs9MejAykLXLR6
	 Q30RZa8L19EelOJGI1hwu3U7kbQe1g3G/Szaspi30/Zy3yOxABR73zzX8He7nmtBMp
	 EK6OObt0tt+blphQcOkdcAun3IBU6mb0MFvT+CRzYi4mfPiOeFCIOxHF6ffJnql3f6
	 M3+d0h7JRi+Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63BA8C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167263868739.16426.1234884649489816055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0744c382304f02e4ae6adb61352a20eb5250bcd8fe6257be21a0f6eb89d83a00
Date: Mon, 02 Jan 2023 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672638687
