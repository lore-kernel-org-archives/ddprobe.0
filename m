Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381D07B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 10:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651054558;
	h=To:Subject:From:Message-Id:Date;
	bh=1Z3bP5GXC3xJJZaU7jycCSVRnvAGCUaBr6fLCQjxbo0=;
	b=ccmgTdFm6wCX8whbVHev/W+mrkdllKxz7sjiXiPGGzP4oJkWxiuJHfXYupX7iaat
	TQ4fobnJZ1xYNY8iMMmjxnrxO2cDdnU8RTYVlOgkkyTX71Kcnxa9qbom8Qx6KnVH4hE
	oFrl/AjOKoeVmnEaRxMT0ADoRk6oLz3BPFkihw1Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651054558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1Z3bP5GXC3xJJZaU7jycCSVRnvAGCUaBr6fLCQjxbo0=;
	b=TmBSb5U21y0RJzGKENHVmdQ5ncWGUVVe5TUuEeuZM0NWVyGfJOG1DvIMpNFCJoQx
	VdfPgPWpwXrzC5Uc9asgzuCXcJZ+QAdTe8/fEcm6ty28RH5EvUgxItMYD8XGIzvIcQ6
	n/CKFAezWF/eHYGK+thz05xwPKDYrVSxF0xLOn1Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806a853c65-a34b5443-61b0-4556-8052-eea5e41049c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e9128ae9e536d29ade15a4c1494912fffaff8c29c88833e5ce102211a15fd01
Date: Wed, 27 Apr 2022 10:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651054558
