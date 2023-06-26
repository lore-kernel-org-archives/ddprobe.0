Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E47413AD1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 22:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD29DC433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 22:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687817588;
	bh=HAaCQD0xgzBo2wj9a79W5+IRr6+eCf5mHTJUBenVIpE=;
	h=To:Subject:From:Date:From;
	b=hKYsGdrojlcFHs3ZNe4n1+VcaKrVANNupXvVke4SHFfSEAbSSEYZHi1kk+GAchTb5
	 pkepNceOPoPHwhwYsup9z5aeFAFRCGV5HE/NV881V8tQs0Y78UMEvFNF28biBA6QvM
	 slYH7E5HB+cmr+otLf6+q0lYDfqzkis/LZ1kIrxBiQZ7AgLqpXEqVIfYihNKkELWDT
	 WtnELKpUb9qL6WU9APT6e5Gk904xoF6RF0gKI8wQTlcF5FYEwfN8/Ax3lJe12sUXTr
	 h00ZtBhIHkn3qIMzvV+A2pP2jYSwZDbvwLVzeimp8wMvqQIHFsnjN0xtXDCBBYKEuq
	 0eykEj8BsViTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB43EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 22:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168781758875.23407.17019119968742606640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3024d240b3d221323f89b26d9931960713a6daba51551d28ed18728e6e85f01c
Date: Mon, 26 Jun 2023 22:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687817588
