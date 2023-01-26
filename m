Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618AD1C06
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 05:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F049AC433D2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 05:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674712386;
	bh=XgjIk4sZwgsmj+9QxdvKZWAWd8SBf2PQDq4FU1CwHyg=;
	h=To:Subject:From:Date:From;
	b=Ryk+R7dS7LycpzmQ3s6dYJ2xJcY7aMgHj0VHWw0v//9jP+MxSNgVvMnvZzz+/VL+N
	 B+EDaLOInlfCaePiYmWYmdv8T4x8HE95xk244j8F9GAcGln8m8Vgt+oHzKK4z4mLB8
	 BljwPfipvDJhuVRxci/a8iyQEsumvUQ/qh5i+cYX1VaPQMYnuSH76ZWLe/+Q9umek4
	 jNz4f173KI/YE2SY4ZhbMYLK1a7qVZbOOfgSdSsXkh5F/oKjZJrIK6c3bdRNdUQ+Jb
	 1GEEd3sMaWD+eWE0Tx2GoR+ynZkqOdkZ3K3j6pQQw6RKQyh4RmpegGbjzio1J9tctX
	 PIBgsjcZ/aPhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA69BC05027
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 05:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167471238580.27025.3443544908464634838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d73150a9ea00a88b87fbcb2cfa54e1c15e3b0b2c5ca1fe1d9bdb4fb3553fbfba
Date: Thu, 26 Jan 2023 05:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674712385
