Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD85F179
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8592EC433D2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674110487;
	bh=DproJg2kb+WamaZnu12C915DLPWo0EgaZNmDpWb5mCU=;
	h=To:Subject:From:Date:From;
	b=RfJSh/As/anv0j4x0a9PQcWpzQN4xObzNrdYQNIZvKKwFskfLIz4G2/OlKKseX+YN
	 1L5sMK1Lg+0CqqYQZLAhmpNd7AW8jNQxCARXESl0H6NzX8DN8O9GVJU2mU0XfSw/99
	 GX7AWAg49jgtrPSB3d+o0pptR+PPsqwEl2ac6T1Qo+FsD5Q0irBIBIeTmRCei33e3A
	 20miJlRJaEZiMoRWf2jgQMdbmpDdQfeGabQywGrEdSbhbSr4cD/ScwwQgk5vqhsfrm
	 9V1NiajdPmXTGn3Hg+n7EhS6oE3zYIYaLyFKuQ2/+qt/U9/dLKMIYy8NJV+/RUNRq+
	 lm2+Gchk5pp5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65C91C38142
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167411048740.29000.5446361548863136705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4383cd9be0fc977c47f17f1b0502e0aa38f1027820614ab9e823d1c7cc120fcc
Date: Thu, 19 Jan 2023 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674110487
