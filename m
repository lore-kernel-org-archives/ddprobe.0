Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA28720EE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 05:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73FFDC433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 05:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668748254;
	bh=1LgY60CU1BzPTFHbL0MtoCH0mNZQGIC07luNPd4VsDk=;
	h=To:Subject:From:Date:From;
	b=sBewoC/aYkhRw7iGM0KKbao6D+5lIDIIvKxJCqlXZfhObxezYdhuudMp7nTO8NLSw
	 OD8ri6uuCa3Mij79MmK55eK25NOt+m/beh92EXx6WV5cEutFUBdSXFTCS1TTHIJpEJ
	 sc4i1gt7PhUi6OCxkFd4PK9S4bVs9Dilk9VzBeuHwXOfKDvNStVDv9xmWJLqopweJe
	 4L1dca98VIVzCexR9gj94yXnoBZB1jdkOYvLp0Y8rnOc21hTMgmHrau8oQJ989USUd
	 yD3dU3Xg5IM7skYVFbj5Vsv2fpopsDOE3hW7MyVcsaK0LfdMVBOZVHGY5P+bKYxAye
	 EXRb+Its9geAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A7B1C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 05:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166874825436.21191.6002245144799946875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57dc08c9abcdbe468295506ebe9b4675ee80a1e7116b344cc8c4cabecb609d81
Date: Fri, 18 Nov 2022 05:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668748254
