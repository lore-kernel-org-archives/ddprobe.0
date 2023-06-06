Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697521ED55
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 17:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC14DC433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 17:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686073325;
	bh=UrGEeDr0N725mpvBZg2FzTagPo2F7fAOLKjlEwmrMqI=;
	h=To:Subject:From:Date:From;
	b=D1qdt6ehVjDEpyBJk7IMcLgEqaE9CZZz0SNh2IVywyz4JCIQnUbPPir2IZyenFIwE
	 KtRzJCK8me9VNzd1Uk3TgGJBkDBPOxW/ueRcFLuw0TID0sWPKq9LhRXIN28PbpuTcr
	 S1IUtFhYRIxkgOCcsAM9yKBxl2Y0SJN5O+3rLyIW6vCi6I2sbI8aJFDYBy5h1Oi/7V
	 I278ycZoknPqMk6qfy0yDiUMFbOyDscpIpCxYKlU+Hka3r6aND+Uck4/+6TCTExAkk
	 zIG89TBI+QOTiqfzzS67qJ3nzXaLjEqFrVdjixAnAQU0MpRiU2Uh/5sJEuduqjp4Eg
	 4/Hxoijrv4k8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1AECC77B7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 17:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168607332578.21950.6202437554559327031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ca09f16c012a826877ea92a0f2fc6692392e1db6842d3c95c785d92b48b9c0e
Date: Tue, 06 Jun 2023 17:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686073325
