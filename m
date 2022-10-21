Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1537E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70271C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666317053;
	bh=bPHvFe1fSV5w1wdsmdK9bEz6WvdV3g7rwyhGRXvB5mE=;
	h=To:Subject:From:Date:From;
	b=aYxZAdsFvNyKRAuPORpo6UPqqBdIkVDEaTFYqTuCZ+ZE407XqIYqINQV/js6a93pR
	 osg6X3RB8/sBmRtAgs8Yi50a/zeNdv4BlQH7antWtANIEHQxNeeCmVitk5cDx6EhUP
	 mpEvSk092iDHnAjAfUw7oAUTi0MMjaV4pXlrenPzVYMcW77dHcpnLwQfLQMP3cQElT
	 fhH842w8OWmhTyfNgpT67zuaWlsjEgQBjqq74S+H1T1m9R/lGdtP4QNyUy1iuVmH7n
	 xk4A2w7t1Ri9rDAjx9Xktu3jxaKIW5lusM6q4JrRT5OVvZ8cTIEuo/PSIw3Bc/t1kX
	 XuM097Db3H/dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50369C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166631705332.26994.2158434989106202633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eec695b219700bc71f5cc8b341fc526f422e6af3c591154c7acb0c2336c5fd1
Date: Fri, 21 Oct 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666317053
