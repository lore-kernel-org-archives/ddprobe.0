Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3165B2F2F
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD26BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673383287;
	bh=65/Yukz5bbuIN7hDhSJuTqHV38zUnFmMvSXurYuYq/o=;
	h=To:Subject:From:Date:From;
	b=gWI9UuWjojiQ9Uxe6RUUWHVi4dzPw3oBv7w0oLpOGuroDSDu6ZSZ5bZmdX7470oIE
	 FDlKDedJ1Kofb0LjZ3buu3u7GnX8Rxxgzk1zzrCl11Bsj4RkL0HqEpVA1TnpQwgCgs
	 XUH5Ufrmfe10xMnLPYOXkp5g43y1R+sdXnVFVjQSXqKVscjXozk65p2IAR6JAvOczA
	 IKGOX/xUDZtlz7QRgN2NBTHIL8l/3Uu099y18W1DxjxkF82IlN/ZYf9UM0KPguwjoG
	 p5gd+zau2H5bpp007EEvWMOKYsPNEE6mgLJQSl7H3MbTANiL4g+xfD5tK8baGVfkev
	 gBh+aPBA5wjZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 827AFC46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167338328747.17088.1318569744606957119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e7afff73d4c10ad3481bb5e54b40622efdaefb8b23e0007f57e5289954fc7f4
Date: Tue, 10 Jan 2023 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673383287
