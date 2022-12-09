Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0699A35
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85358C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670573487;
	bh=n6D+s2Atdz7TNWKHiCDolOxe/CLUODNIqXeLPDH/wgk=;
	h=To:Subject:From:Date:From;
	b=V+8+Yn6NLVrWHDEuIodwN/5q2uz28AJe3ythCgABiRU3H1SySHPVj5x5O5q+7v/b5
	 ofeaTz+YgNAHOiSStCuujaJUPQLZxTz1OuJtUcH/p/hXR+1zPpD/I8LVHImVtwYSJI
	 +eTwlPaEmpEZBmn8U43xBB447FdMQlskAQVDT7tcPlOe9VSXsvEr73ZQ7Dkft7jOql
	 fs4oBNMbqgwCQttb8hG5TsfEvru4JdywFqr3BrC9nE7gxBsOp7lTj8V9Yw/ufb2NnF
	 NGbJqPz+o6jhLB7SFZq1p5EijJm3jRMvv0qylBemnoiN9rHW2Zub4MGuTCpLUJPhuB
	 XqKgAzsX8lJwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67046C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167057348740.7144.5931642889344606933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf814549ac8d5dfe00de183104b9931f934437bd3cbfff7d09e3fa90960a6b8b
Date: Fri, 09 Dec 2022 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670573487
