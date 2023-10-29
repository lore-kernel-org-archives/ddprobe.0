Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B42377
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYmABQIT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92A0CC433C7
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698547096;
	bh=AzsWQfoRDlhyRozlpowmNTE0I9AVDHyP6M5RWyzrxzc=;
	h=To:Subject:From:Date:From;
	b=qYmABQIT4eDI3oi2bjDYnGsrozCVeKGew2xLrxbxs3SmougzdziwYuw9R7houHWZa
	 34p2rGjti5dDmSqmXm7PIwTEun7DLguXR0K/9TLtxeCXkLcGPcrFbSViDg2TfGVFQR
	 tHficOJ6mxmpeedYyAyvy3OWVYsFv63MWsrYMDvngeXWLxyYv9WkmgGAe+hFPSiIwp
	 7yCRTHidOeGJe8c/g+KymzqBvot8m1cr5mF7SqRo9fJqfDIbxrrs9E48hkC863Gt1E
	 E353rgPTkGfnOF+E8c8sS6XS7fv+4Gx3JwAXbqHymGMWIbOg2lIl4XTZVmTFgugl+W
	 eXxRKNzcapffA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BF56C4332F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169854709640.14295.17950626644638039054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 482208f474d7dc40112f9778058a4171373a69553e54a4f3a6f9c21279fdea6e
Date: Sun, 29 Oct 2023 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698547096
