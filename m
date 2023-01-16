Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFE761108
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF85C433A8
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673845887;
	bh=7KjpQ0qMFdGCNCrK8DD2qcyo0O4X132in6ol2IoxMTs=;
	h=To:Subject:From:Date:From;
	b=r7sNEMuMn9ZZ/3W6sAc0RjudXpgaqRgxtNjVDSTIwqR5Ryb06Ik9PsnqMs4mATt5q
	 kAvhAgoYjr5LwSbCMbc3u6g7roAbQCxZ28RCNfPOWpoMBHbIk62eT5dfvsroVvrWVw
	 5VktIGD0j+x7wCeJPWRY7xJzBaZt0iDD5aZzYRDue4O+81Nu+dmHYUMxIhhF9QXL+P
	 8It7yCVQPSVEInOUb1p4szG0cC5+n2I91exrvQAue305m7S1Ya78qM/A07+4S+UDQM
	 rJUi1Zqx1tw+3BnhwkcqWMPefVn+J5WIGc+T3ukwY4exAt5j13WOD4S6OIt979iLnm
	 b439PCYZGYIWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79F41C46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167384588746.2013.13659298125307305209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 265ec5a3c1cfef7f744f23498dd5ae7f270a19bf40cd343b53d3a6fc46602e2b
Date: Mon, 16 Jan 2023 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673845887
