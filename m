Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7505362
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83FB6C433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672764687;
	bh=nrtbfS7i3hSN515TUVguZuVw7Aw65kPEs2GYIcQ5ho8=;
	h=To:Subject:From:Date:From;
	b=etJLiIdRYSpRteq7O82qoFsK022YS3B3V/8CWpJoBglwrA3DH6A9ZhCH00VekP92z
	 e3BCg58B6/O9nXE8+LhSmU9qcFcuURJHtQMfH8iS6RQBuajKKDRZXxBfdbD/YpgKh5
	 V8FskZo2yfLgQDCZMeWCJDzhw3bDa+lBTo3JRk9BUhIIrV1YfDlfudxRKs8umo1yJM
	 MjVsGR/xnfzhPcBE3eL6LQGb21rLwHv1mFsvmwAAbVsexe3FBqXVtTOO/Eogp7DYPH
	 UnLX9nnrWEj5A8rN6Zr/srFEcnY1FepjkwqJVWwqkDfLPeyfQl5irXM+E3HxpNM+If
	 f+UbtATTqhX4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63921C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167276468740.22430.8287709139224356796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27aed744f25f820d5e32944c04da9870e187df23286ff4d7ab52883a89f11ad5
Date: Tue, 03 Jan 2023 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672764687
