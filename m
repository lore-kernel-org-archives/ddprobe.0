Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C91621FA8
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74337C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672386087;
	bh=GCSQUPootPXl8X1s9T/c7TN5I+V57xb+YLx4b/BgRmI=;
	h=To:Subject:From:Date:From;
	b=KxLXknGvqUlSzOug6gSCR2H9St7JET6s0bkkWoc6/tdXKeBxxjSUw93DkQqy8QCMb
	 nRXvcJenFyfmng+zoMjSl9iXPtN3IDRtp4P/hSIpk71EObqthjNl0cp1NBBx1/J2kO
	 ccZ16u5LvkJx9XA1IlkwlvnYAKfFGCdndvWex8yAfToAujo0f73yChCMU8kgRoU11d
	 /WnFJ1DXRYLIoL53LRkfpe7SJX2fE3jlwpj1YC1+8bpLcOCAsEb9IV1vhS5Uja6ocT
	 UjRQiyCYYCbCQsa5LOEFsdcH3eaaYCMi9q9gTB4w0e/YFF3y3Em5PX6seAXt3fPn4m
	 Xgvjr+sALPDIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DA54C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167238608737.25864.13454463548920530919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a473093bee39cb1b18799cf184a3113908b42dc27399267f47d3831c2031bee
Date: Fri, 30 Dec 2022 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672386087
