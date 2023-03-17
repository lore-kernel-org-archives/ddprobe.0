Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3458379D6
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 21:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF97EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 21:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679086925;
	bh=hpBkNrX1rfMJSmMD2HVKYx9ylZP/SKF0JUHNplKlqfM=;
	h=To:Subject:From:Date:From;
	b=iTGC4syKd0c8SMxB/7Fx/myKLYtcDvfoVSNuluRNMUj+XyltfcEESTcrv9PxgryFC
	 d/6cSmEfmaGyiiS0hNceOvNnT+fGYx2u4iynsJ2kbqdH5rEIzTlgG18vALjdx37ToN
	 XKz4wHAvR1UrnRNbea1cTpeyoUhmXdzy/FCjzdyiP6FwlJv566UweReH93Q9fBQgG7
	 4jGGiD2qdNmPjh1mgRqp9cDjFmvIZ6YrEi5pHfTLgYcwqQK7EnW5TZCsSeafxK9GvX
	 umPH3sx7TQ4FHTYDMsn5CCQhbTQV5Th2aCNlQCj0Dt2Lb1Oombi+DffG90pKbikWeB
	 pVM5wU/j11fJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6229C7618B
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 21:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167908692580.16081.17923415130611170911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a1bc88df5b67c0bbb4a43926378f8a475b1c473d5b206d200903d08961aa4c2
Date: Fri, 17 Mar 2023 21:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679086925
