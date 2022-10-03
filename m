Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9AD8F71
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D5E1C433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664798453;
	bh=dF7QK2e+S9QAXTGEomdH5t0STAUCL3RXyp6nDvce3PE=;
	h=To:Subject:From:Date:From;
	b=cO2q0WkdmVhj4QbZAPLdp3DYfTlp5EoB/a0m7OPRJrjZ6MwP7PG9Pa15pgrrJ4/3B
	 1iI3EqttZPfFrYp3QmaR/ko5LMxd3GsPdalhEnE4+UF1+nxBRJVOgsIXnY3LgWnFW3
	 Y93N6spLp6m5CVNIUmlgAbI7jQ6GRmlflFwj2KTDzJX+Z27nfcFPc+YggySWbgS2tQ
	 HbOtWTa9IzfoFccv7fS3Zo9ywBJxZEipk0x8ATMsExPmpwAxJOLS14lydjN0+cVWRp
	 ZOg8lzBWzr5gUVNFOcslavwRol4JDaUKPSXHNGS9KcoMI+1OMD+nw1vcZNnzahZ/zE
	 FTP9v8OYVbOEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 546AAC433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166479845333.11989.29484048775754384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb5b7f8b1d6ac563f50f0b0e4dc5196f680b1fe8d9ea769186e6ee94d2359a9f
Date: Mon, 03 Oct 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664798453
