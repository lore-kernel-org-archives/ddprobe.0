Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAFBC746D
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C627C433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663622453;
	bh=cyc4dmZnEZU4EMkp3ZvctKWLlnP+Is3OdQy4mMq73Nw=;
	h=To:Subject:From:Date:From;
	b=W8vi+rFl23G+mbMi6iosBlItFDe2RzuF46P/tuBdTp9SLraJp4lAjVMqX8vOxQcVy
	 ZxG6Y8WW5h0q5dwLVieKKbE1q3cldQZ8vlYP2JYVAAD/f1l3ldjiU1pzjTms78A483
	 xWrFW0poAkHIC1xx9w4hoPX43ebMfHNOzHhWDgrDCxxM/6m/mms0gRFQ2vzcLj/tXN
	 T4W4h5dEBroQ4mwhSWbSeaUKEHHXUoj6VBPb/raloinJN0DWcaVli/rx1pykaKwReJ
	 +p8dUdzCDESlm9VKH8V4HrfCsYUDpptGuLH7m6v/Um57bTCc5CqPl556xdOxKi17id
	 6rmGhG1VHHa/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55AEDECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166362245333.20544.3843197995760598165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a6b46e6fe84a99501a4b7e21690918540c223a0c78dbeacc8edfc27aceb304f
Date: Mon, 19 Sep 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663622453
