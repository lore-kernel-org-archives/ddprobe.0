Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCB978F47
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94AF3C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672768887;
	bh=y6hE/c8C3X87uiuD0rjZyDHvYIj5N8bgTbIi497Rki0=;
	h=To:Subject:From:Date:From;
	b=c2tbygGNJ79PTfyq7ynnMsbtidRu3e4iA7zBOLgAyfP5NsGe8IvtZ27Op0p7RCiLa
	 1AxLqgf9atDgHmZkcdIx5795HmlBZuqX3KQrsuMpmRjtRFa1rmKX8w/UskigiJ6plq
	 vrq2+oNSQYkL/Fy2THmCap4ucTwp1YvmdXfyI1Zt/IBrPxgv0Qmv9VcYlS+uV/Iszn
	 Clixl8twWoB6+1igvztrznL9H/tzfIR1iFT/gRyMm+cOSEIq5dY2rZ7boDbGP129tm
	 rqvosMWJ9AYoHDu835TRPOC7TXVg3EGUHtE1/i3fAjeXVPTypC6924XzWSze0SqTqs
	 NxdR8ciDfn1Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F541C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167276888744.29882.3092152459583820286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd454fc40496e4fb6d2e0d9bb2813f25841587a087290c528db9d2e178a32fce
Date: Tue, 03 Jan 2023 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672768887
